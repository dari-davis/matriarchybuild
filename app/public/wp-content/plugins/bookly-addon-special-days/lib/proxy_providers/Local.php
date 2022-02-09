<?php
namespace BooklySpecialDays\Lib\ProxyProviders;

use Bookly\Lib as BooklyLib;
use BooklySpecialDays\Lib;

/**
 * Class Local
 * @package BooklySpecialDays\Lib\ProxyProviders
 */
class Local extends BooklyLib\Proxy\SpecialDays
{
    /**
     * @inheritDoc
     */
    public static function getSchedule( array $staff_ids, $start_date, $end_date )
    {
        $special_days = Lib\Entities\StaffSpecialDay::query( 'ssd' )
            ->select( 'ssd.staff_id, ssd.location_id, ssd.date, ssd.start_time, ssd.end_time, break.start_time AS break_start, break.end_time AS break_end' )
            ->leftJoin( 'StaffSpecialDayBreak', 'break', 'break.staff_special_day_id = ssd.id' )
            ->whereIn( 'ssd.staff_id', $staff_ids )
            ->where( 'ssd.location_id', null )
            ->whereNot( 'ssd.start_time', null )
            ->whereGte( 'ssd.date', $start_date->format( 'Y-m-d' ) )
            ->whereLte( 'ssd.date', $end_date->format( 'Y-m-d' ) )
        ;
        if ( BooklyLib\Config::locationsActive() ) {
            $special_days = BooklyLib\Proxy\Locations::prepareSpecialDays( $special_days, $staff_ids, $start_date, $end_date );
        }

        return $special_days->fetchArray();

    }

    /**
     * @inheritDoc
     */
    public static function getServiceSchedule( $service_id, $start_date, $end_date )
    {
        // Combine with Service Schedule Add-on.
        return Lib\Entities\ServiceSpecialDay::query( 'sd' )
            ->select( 'sd.start_time, sd.end_time, sd.date,
                sb.start_time AS break_start,
                sb.end_time AS break_end' )
            ->leftJoin( 'ServiceSpecialDayBreak', 'sb', 'sb.service_special_day_id = sd.id', 'BooklySpecialDays\Lib\Entities' )
            ->where( 'sd.service_id', $service_id )
            ->whereNot( 'sd.date', null )
            ->whereGte( 'sd.date', $start_date->format( 'Y-m-d' ) )
            ->whereLte( 'sd.date', $end_date->format( 'Y-m-d' ) )
            ->fetchArray();
    }

    /**
     * @inheritDoc
     */
    public static function getDaysAndTimes()
    {
        return Lib\Entities\StaffSpecialDay::query( 'ssd' )
            ->select( '`ssd`.`staff_id`, DAYOFWEEK(`ssd`.`date`) AS `day_index`, MIN(`ssd`.`start_time`) AS `start_time`, MAX(`ssd`.`end_time`) AS `end_time`, `st`.`time_zone`' )
            ->leftJoin( 'Staff', 'st', '`st`.`id` = `ssd`.`staff_id`', 'Bookly\Lib\Entities' )
            ->whereNot( 'ssd.date', null )
            ->whereNot( 'DAYOFWEEK(ssd.date)', null )
            ->whereNot( 'ssd.start_time', null )
            ->where( 'st.visibility', 'public' )
            ->groupBy( 'staff_id' )
            ->groupBy( 'day_index' )
            ->fetchArray();
    }

}