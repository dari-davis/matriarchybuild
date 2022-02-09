<?php
namespace BooklySpecialDays\Backend\Components\Dialogs\Staff\Edit\ProxyProviders;

use Bookly\Backend\Modules\Staff\Forms\Widgets\TimeChoice;
use Bookly\Lib as BooklyLib;
use BooklySpecialDays\Lib;
use BooklySpecialDays\Backend\Components\Dialogs\Staff;
use Bookly\Backend\Components\Dialogs\Staff\Edit\Proxy;

/**
 * Class Local
 *
 * @package BooklySpecialDays\Backend\Components\Dialogs\Staff\Edit\ProxyProviders
 */
class Local extends Proxy\SpecialDays
{
    /**
     * @inheritDoc
     */
    public static function getStaffSpecialDaysHtml( $default, $staff_id, $location_id )
    {
        if ( ! BooklyLib\Utils\Common::isCurrentUserAdmin() ) {
            do {
                $staff = new BooklyLib\Entities\Staff();
                if ( $staff->load( $staff_id ) && $staff->getWpUserId() == get_current_user_id() ) {
                    break;
                }
                return 'Bookly: ' . __( 'You do not have sufficient permissions to access this page.' );
            } while ( 0 );
        }
        $special_days  = self::getStaffSpecialDays( $staff_id, $location_id );
        $working_end   = new TimeChoice( array( 'use_empty' => false, 'type' => 'to' ) );
        $working_start = new TimeChoice( array( 'use_empty' => false, 'type' => 'from' ) );

        return Staff\Edit\Ajax::renderTemplate( 'list', compact( 'special_days', 'staff_id', 'location_id', 'working_start', 'working_end' ), false );
    }

    /**
     * @inheritDoc
     */
    public static function getStaffSpecialDays( $staff_id, $location_id )
    {
        $special_days = Lib\Entities\StaffSpecialDay::query( 'sd' )
            ->select( 'sd.id, sd.date, sd.start_time, sd.end_time' )
            ->where( 'sd.staff_id', $staff_id )
            ->where( 'sd.location_id', $location_id )
            ->indexBy( 'id' )
            ->sortBy( 'sd.date' )
            ->fetchArray();
        if ( is_array( $special_days ) ) {
            array_walk( $special_days, function ( &$day ) {
                $day['breaks'] = array();
            } );
            $breaks = Lib\Entities\StaffSpecialDayBreak::query( 'sb' )
                ->select( 'sb.id, sb.start_time, sb.end_time, sb.staff_special_day_id AS day_id' )
                ->whereIn( 'sb.staff_special_day_id', array_keys( $special_days ) )
                ->sortBy( 'sb.start_time' )
                ->fetchArray();
            foreach ( $breaks as $break ) {
                $special_days[ $break['day_id'] ]['breaks'][] = $break;
            }
            return $special_days;
        }

        return array();
    }
}