<?php
namespace BooklySpecialDays\Backend\Modules\Services\ProxyProviders;

use Bookly\Lib as BooklyLib;
use Bookly\Backend\Modules\Services\Proxy;
use BooklySpecialDays\Backend\Modules\Services\Forms;
use BooklySpecialDays\Lib;

/**
 * Class Shared
 * @package BooklySpecialDays\Backend\Modules\Services\ProxyProviders
 */
class Shared extends Proxy\Shared
{
    /**
     * @inheritDoc
     */
    public static function duplicateService( $source_id, $target_id )
    {
        foreach ( Lib\Entities\ServiceSpecialDay::query()->where( 'service_id', $source_id )->fetchArray() as $day ) {
            $new_day = new Lib\Entities\ServiceSpecialDay( $day );
            $new_day->setId( null )->setServiceId( $target_id )->save();
            foreach ( Lib\Entities\ServiceSpecialDayBreak::query()->where( 'service_special_day_id', $day['id'] )->fetchArray() as $break ) {
                $new_break = new Lib\Entities\ServiceSpecialDayBreak( $break );
                $new_break->setId( null )->setServiceSpecialDayId( $new_day->getId() )->save();
            }
        }
    }
}