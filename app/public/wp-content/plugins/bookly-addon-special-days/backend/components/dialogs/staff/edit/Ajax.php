<?php
namespace BooklySpecialDays\Backend\Components\Dialogs\Staff\Edit;

use Bookly\Lib as BooklyLib;
use BooklySpecialDays\Lib;
use Bookly\Lib\Base\Schema;
use Bookly\Lib\Entities\Stat;
use Bookly\Backend\Modules\Staff\Forms\Widgets\TimeChoice;
use Bookly\Backend\Components\Dialogs\Staff\Edit\Proxy;

/**
 * Class Ajax
 * @package BooklySpecialDays\Backend\Components\Dialogs\Staff\Edit
 */
class Ajax extends BooklyLib\Base\Ajax
{
    /**
     * @inheritDoc
     */
    protected static function permissions()
    {
        if ( BooklyLib\Config::staffCabinetActive() ) {
            return array( '_default' => 'staff' );
        }
        return get_option( 'bookly_gen_allow_staff_edit_profile' ) ? array( '_default' => 'staff' ) : array();
    }

    /**
     * Get schedule items of staff member.
     */
    public static function staffSpecialDays()
    {
        $staff_id = self::parameter( 'staff_id' );
        $location_id = self::parameter( 'location_id' ) ?: null;
        $html = \BooklySpecialDays\Backend\Components\Dialogs\Staff\Edit\ProxyProviders\Local::getStaffSpecialDaysHtml( '', $staff_id, $location_id );
        wp_send_json_success( compact( 'html' ) );
    }

    /**
     * Save ONLY unique dates.
     */
    public static function saveDays()
    {
        $duplicate_ids = array();
        $special_days  = (array) self::parameter( 'list' );
        $staff_id      = self::parameter( 'staff_id' );
        $location_id   = self::parameter( 'location_id' ) ?: null;
        foreach ( $special_days as $day ) {
            $ssd = Lib\Entities\StaffSpecialDay::query()
                ->select( 'id' )
                ->where( 'date', $day['date'] )
                ->where( 'staff_id', $staff_id )
                ->where( 'location_id', $location_id );
            if ( isset( $day['id'] ) ) {
                $ssd->whereNot( 'id', $day['id'] );
            }
            $ssd = $ssd->fetchRow();
            if ( empty( $ssd ) ) {
                $form = new Forms\StaffSpecialDay();
                $day['staff_id'] = $staff_id;
                $day['location_id'] = $location_id;
                $form->bind( $day );
                $form->save();
                Stat::record( 'special_days_changed', Schema::getAffectedRows() );
            } else {
                $duplicate_ids[] = $day['id'];
            }
        }
        if ( empty ( $duplicate_ids ) ) {
            Proxy\Shared::updateStaffSpecialDays( self::postParameters() );
            wp_send_json_success();
        } else {
            wp_send_json_error( array( 'message' => __( 'Duplicate dates are not permitted.', 'bookly' ), 'ids' => $duplicate_ids ) );
        }
    }

    /**
     * Create new day.
     */
    public static function addDay()
    {
        $start_date = date_create( self::parameter( 'start_date' ) );
        $end_date = date_create( self::parameter( 'end_date' ) );
        $location_id = self::parameter( 'location_id' );
        $html = '';
        while ( $start_date <= $end_date ) {
            $special_day = new Lib\Entities\StaffSpecialDay();
            $special_day
                ->setStaffId( self::parameter( 'staff_id' ) )
                ->setDate( $start_date->format( 'Y-m-d H:i:s' ) )
                ->setStartTime( self::parameter( 'start_time' ) )
                ->setEndTime( self::parameter( 'end_time' ) );
            if ( $location_id ) {
                $special_day->setLocationId( $location_id );
            }
            $special_day->save();
            $day = $special_day->getFields();
            $working_start = new TimeChoice( array( 'use_empty' => false, 'type' => 'from' ) );
            $working_end = new TimeChoice( array( 'use_empty' => false, 'type' => 'to' ) );
            // The next value will be rounded to integer number of hours, i.e. e.g. 8:00, 9:00, 10:00 and so on.
            $html .= self::renderTemplate( '_row', compact( 'day', 'working_start', 'working_end', 'start_date' ), false );
            $start_date->modify( '+1 day' );
        }

        wp_send_json_success( array( 'html' => $html ) );
    }

    /**
     * Save break.
     */
    public static function saveBreak()
    {
        $id         = self::parameter( 'staff_special_days_breaks_id', null );
        $end_time   = self::parameter( 'end_time' );
        $start_time = self::parameter( 'start_time' );
        $staff_special_day_id = self::parameter( 'staff_special_day_id', null );
        if ( self::breakIntervalAvailable( $start_time, $end_time, $staff_special_day_id, $id ) ) {
            $ssd_break  = new Lib\Entities\StaffSpecialDayBreak();
            $ssd_break->setId( $id )
                ->setStartTime( $start_time )
                ->setEndTime( $end_time )
                ->setStaffSpecialDayId( $staff_special_day_id )
                ->save();
            Stat::record( 'special_days_changed', Schema::getAffectedRows() );

            $interval = BooklyLib\Utils\DateTime::formatInterval( $start_time, $end_time );
            $data  = $ssd_break->getFields();
            $data['staff_special_days_break_id'] = $data['id'];
            wp_send_json_success( array( 'html' => self::renderTemplate( '_break', $data, false ), 'interval' => $interval ) );
        } else {
            wp_send_json_error( array( 'message' => __( 'The requested interval is not available', 'bookly' ) ) );
        }
    }

    /**
     * Delete break.
     */
    public static function deleteBreak()
    {
        Lib\Entities\StaffSpecialDayBreak::query()
            ->where( 'id', self::parameter( 'id' ) )
            ->delete()
            ->execute();
        Stat::record( 'special_days_changed', Schema::getAffectedRows() );
        wp_send_json_success() ;
    }

    /**
     * Delete days.
     */
    public static function deleteDays()
    {
        Lib\Entities\StaffSpecialDay::query()->delete()
            ->whereIn( 'id',     self::parameter( 'ids' ) )
            ->where( 'staff_id', self::parameter( 'staff_id' ) )->execute();
        Stat::record( 'special_days_changed', Schema::getAffectedRows() );
        wp_send_json_success();
    }

    /******************************************************************************************************************
     * Protected methods                                                                                              *
     ******************************************************************************************************************/

    /**
     * Check break range is available.
     *
     * @param string $start_time
     * @param string $end_time
     * @param int    $staff_special_day_id
     * @param int    $self_id
     * @return bool
     */
    protected static function breakIntervalAvailable( $start_time, $end_time, $staff_special_day_id, $self_id = 0 )
    {
        if ( $start_time > $end_time ) {
            return false;
        }
        return Lib\Entities\StaffSpecialDayBreak::query()
            ->where( 'staff_special_day_id', $staff_special_day_id )
            ->whereNot( 'id', $self_id )
            ->whereLt( 'start_time', $end_time )
            ->whereGt( 'end_time', $start_time )
            ->count() === 0;
    }

    /**
     * Check if the current user has access to the action.
     *
     * @param string $action
     * @return bool
     */
    protected static function hasAccess( $action )
    {
        if ( parent::hasAccess( $action ) ) {
            if ( ! BooklyLib\Utils\Common::isCurrentUserAdmin() ) {
                $staff = new BooklyLib\Entities\Staff();
                switch ( $action ) {
                    case 'staffSpecialDays':
                    case 'saveDays':
                    case 'addDay':
                    case 'deleteBreak':
                    case 'deleteDays':
                        $staff->load( self::parameter( 'staff_id' ) );
                        break;
                    case 'saveBreak':
                        $ssd = Lib\Entities\StaffSpecialDay::find( self::parameter( 'staff_special_day_id' ) );
                        $staff->load( $ssd->getStaffId() );
                        break;
                    default:
                        return false;
                }
                return $staff->getWpUserId() == get_current_user_id();
            }
            return true;
        }

        return false;
    }
}