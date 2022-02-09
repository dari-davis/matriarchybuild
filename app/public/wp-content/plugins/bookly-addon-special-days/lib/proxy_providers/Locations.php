<?php
namespace BooklySpecialDays\Lib\ProxyProviders;

use Bookly\Lib as BooklyLib;
use BooklySpecialDays\Lib;

/**
 * Class Locations
 * @package BooklySpecialDays\Lib\ProxyProviders
 */
class Locations extends BooklyLib\Proxy\Locations
{
    /**
     * @inheritDoc
     */
    public static function beforeDelete( array $location_ids )
    {
        Lib\Entities\StaffSpecialDay::query()
            ->delete()
            ->whereIn( 'location_id', $location_ids )
            ->execute();

        return $location_ids;
    }
}