<?php
namespace BooklySpecialDays\Backend\Modules\Staff\ProxyProviders;

use Bookly\Backend\Modules\Staff\Proxy;
use Bookly\Lib as BooklyLib;

/**
 * Class Shared
 * @package BooklySpecialDays\Backend\Modules\Staff\ProxyProviders
 */
class Shared extends Proxy\Shared
{
    /**
     * @inheritDoc
     */
    public static function enqueueStaffProfileScripts()
    {
        self::enqueueScripts( array(
            'bookly' => array( 'backend/resources/js/range-tools.js' => array( 'bookly-backend-globals' ), ),
            'module' => array( 'js/special-days.js' => array( 'bookly-range-tools.js' ), ),
        ) );

        wp_localize_script( 'bookly-special-days.js', 'SpecialDaysL10n', array(
            'datePicker'      => BooklyLib\Utils\DateTime::datePickerOptions(),
            'are_you_sure'    => esc_attr__( 'Are you sure?', 'bookly' ),
            'start_time'      => '08:00:00',
            'end_time'        => '18:00:00',
            'saved'           => esc_attr__( 'Settings saved.', 'bookly' ),
            'duplicate_error' => esc_attr__( 'Duplicate dates are not permitted.', 'bookly' ),
            'past_date_error' => esc_attr__( 'Date in the past.', 'bookly' ),
        ) );
    }

    /**
     * @inheritDoc
     */
    public static function enqueueStaffProfileStyles()
    {
        self::enqueueStyles( array(
            'alias' => array( 'bookly-backend-globals', )
        ) );
    }
}