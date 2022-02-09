<?php
namespace BooklySpecialDays\Lib;

use Bookly\Lib as BooklyLib;
use BooklySpecialDays\Backend;

/**
 * Class Plugin
 * @package BooklySpecialDays\Lib
 */
abstract class Plugin extends BooklyLib\Base\Plugin
{
    protected static $prefix;
    protected static $title;
    protected static $version;
    protected static $slug;
    protected static $directory;
    protected static $main_file;
    protected static $basename;
    protected static $text_domain;
    protected static $root_namespace;
    protected static $embedded;

    /**
     * @inheritDoc
     */
    protected static function init()
    {
        // Init ajax.
        Backend\Components\Dialogs\Service\Edit\Ajax::init();

        // Init proxy.
        Backend\Components\Dialogs\Service\Edit\ProxyProviders\Local::init();
        Backend\Components\Dialogs\Service\Edit\ProxyProviders\Shared::init();
        Backend\Components\Dialogs\Staff\Edit\ProxyProviders\Local::init();
        Backend\Components\Dialogs\Staff\Edit\ProxyProviders\Shared::init();
        Backend\Components\Dialogs\Staff\Edit\Ajax::init();
        Backend\Components\TinyMce\ProxyProviders\Local::init();
        Backend\Modules\Services\ProxyProviders\Shared::init();
        Backend\Modules\Staff\ProxyProviders\Shared::init();
        ProxyProviders\Local::init();
        ProxyProviders\Locations::init();
    }
}