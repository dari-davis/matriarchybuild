<?php
namespace BooklySpecialDays\Backend\Components\TinyMce\ProxyProviders;

use Bookly\Backend\Components\TinyMce\Proxy\SpecialDays;

/**
 * Class Local
 * @package BooklySpecialDays\Backend\Components\TinyMce
 */
class Local extends SpecialDays
{
    /**
     * @inheritDoc
     */
    public static function renderStaffCabinetSettings()
    {
        self::renderTemplate( 'option' );
    }
}