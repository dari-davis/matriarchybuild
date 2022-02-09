<?php
namespace BooklySpecialDays\Backend\Components\Dialogs\Service\Edit;

use BooklySpecialDays\Lib;
use Bookly\Lib as BooklyLib;
use Bookly\Backend\Modules\Staff\Forms\Widgets\TimeChoice;

/**
 * Class Ajax
 * @package BooklySpecialDays\Backend\Components\Dialogs\Service\Edit
 */
class Ajax extends BooklyLib\Base\Ajax
{
    /**
     * Create new day.
     */
    public static function addForService()
    {
        $start_date = date_create( self::parameter( 'start_date' ) );
        $end_date = date_create( self::parameter( 'end_date' ) );
        $html = '';
        while ( $start_date <= $end_date ) {
            $special_day = new Lib\Entities\ServiceSpecialDay();
            $special_day
                ->setServiceId( self::parameter( 'service_id' ) )
                ->setDate( $start_date->format( 'Y-m-d H:i:s' ) )
                ->setStartTime( self::parameter( 'start_time' ) )
                ->setEndTime( self::parameter( 'end_time' ) )
                ->save();
            $day = $special_day->getFields();
            $working_start = new TimeChoice( array( 'empty_value' => __( 'OFF', 'bookly' ), 'type' => 'from' ) );
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
    public static function saveBreakForService()
    {
        $id                     = self::parameter( 'service_special_days_breaks_id', null );
        $end_time               = self::parameter( 'end_time' );
        $start_time             = self::parameter( 'start_time' );
        $service_special_day_id = self::parameter( 'service_special_day_id', null );
        if ( self::isBreakIntervalAvailable( $start_time, $end_time, $service_special_day_id, $id ) ) {
            $ssd_break = new Lib\Entities\ServiceSpecialDayBreak();
            $ssd_break->setId( $id )
                ->setStartTime( $start_time )
                ->setEndTime( $end_time )
                ->setServiceSpecialDayId( $service_special_day_id )
                ->save();
            $interval = BooklyLib\Utils\DateTime::formatInterval( $start_time, $end_time );
            $data     = $ssd_break->getFields();

            $data['service_special_days_break_id'] = $data['id'];
            wp_send_json_success( array( 'html' => self::renderTemplate( '_break', $data, false ), 'interval' => $interval ) );
        } else {
            wp_send_json_error( array( 'message' => __( 'The requested interval is not available', 'bookly' ) ) );
        }
    }

    /**
     * Delete break.
     */
    public static function deleteBreakForService()
    {
        Lib\Entities\ServiceSpecialDayBreak::query()
            ->where( 'id', self::parameter( 'id' ) )
            ->delete()
            ->execute();

        wp_send_json_success();
    }

    /**
     * Delete days.
     */
    public static function deleteDaysForService()
    {
        Lib\Entities\ServiceSpecialDay::query()->delete()
            ->whereIn( 'id', self::parameter( 'ids' ) )
            ->where( 'service_id', self::parameter( 'service_id' ) )->execute();

        wp_send_json_success();
    }

    /******************************************************************************************************************
     * Protected methods                                                                                              *
     ******************************************************************************************************************/

    /**
     * Check break range is available.
     *
     * @param     $start_time
     * @param     $end_time
     * @param int $service_special_day_id
     * @param int $self_id
     * @return bool
     */
    protected static function isBreakIntervalAvailable( $start_time, $end_time, $service_special_day_id, $self_id = 0 )
    {
        if ( $start_time > $end_time ) {
            return false;
        }

        return Lib\Entities\ServiceSpecialDayBreak::query()
            ->where( 'service_special_day_id', $service_special_day_id )
            ->whereNot( 'id', $self_id )
            ->whereLt( 'start_time', $end_time )
            ->whereGt( 'end_time', $start_time )
            ->count() === 0;
    }
}