<?php
namespace BooklySpecialDays\Backend\Components\Dialogs\Service\Edit\ProxyProviders;

use Bookly\Lib as BooklyLib;
use Bookly\Backend\Components\Dialogs\Service\Edit\Proxy;
use Bookly\Backend\Modules\Staff\Forms\Widgets\TimeChoice;
use BooklySpecialDays\Lib;

/**
 * Class Local
 * @package BooklySpecialDays\Backend\Components\Dialogs\Service\Edit\ProxyProviders
 */
class Local extends Proxy\ServiceSpecialDays
{
    /**
     * @inheritDoc
     */
    public static function getTabHtml( $service_id )
    {
        $special_days  = self::getSpecialDays( $service_id );
        $working_start = new TimeChoice( array( 'empty_value' => __( 'OFF', 'bookly' ), 'type' => 'from' ) );
        $working_end   = new TimeChoice( array( 'use_empty' => false, 'type' => 'to' ) );

        return self::renderTemplate( 'list', compact( 'special_days', 'service_id', 'working_start', 'working_end' ), false );
    }

    /**
     * @inheritDoc
     */
    public static function renderTab()
    {
        self::renderTemplate( 'special_days_tab' );
    }

    /******************************************************************************************************************
     * Protected methods                                                                                              *
     ******************************************************************************************************************/

    /**
     * Get service special days items of staff member.
     *
     * @param int $service_id
     * @return array [ id, date, start_time, end_time, breaks[ [ id, start_time, end_time, day_id ] ] ]
     */
    protected static function getSpecialDays( $service_id )
    {
        $special_days = Lib\Entities\ServiceSpecialDay::query( 'ssd' )
            ->select( 'ssd.id, ssd.date, ssd.start_time, ssd.end_time' )
            ->where( 'ssd.service_id', $service_id )
            ->indexBy( 'id' )
            ->sortBy( 'ssd.date' )
            ->fetchArray();
        if ( is_array( $special_days ) ) {
            array_walk( $special_days, function ( &$day ) {
                $day['breaks'] = array();
            } );
            $breaks = Lib\Entities\ServiceSpecialDayBreak::query( 'sb' )
                ->select( 'sb.id, sb.start_time, sb.end_time, sb.service_special_day_id AS day_id' )
                ->whereIn( 'sb.service_special_day_id', array_keys( $special_days ) )
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