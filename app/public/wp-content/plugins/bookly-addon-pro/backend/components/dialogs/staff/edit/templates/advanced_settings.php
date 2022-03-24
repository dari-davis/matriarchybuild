<?php if ( ! defined( 'ABSPATH' ) ) exit; // Exit if accessed directly
use Bookly\Lib as BooklyLib;
use Bookly\Backend\Components\Dialogs\Staff\Edit\Proxy;
use Bookly\Backend\Components\Controls\Buttons;
/**
 * @var BooklyLib\Entities\Staff $staff
 * @var array $tpl_data
 */
?>
<form>
    <div class="form-group d-none">
        <label for="bookly-working-time-limit"><?php esc_html_e( 'Limit working hours per day', 'bookly' ) ?></label>
        <select name="working_time_limit" class="form-control custom-select" id="bookly-working-time-limit">
            <option value=""><?php esc_html_e( 'Unlimited', 'bookly' ) ?></option>
            <?php for ( $i = 1; $i < 24; $i ++ ) : ?>
                <option value="<?php echo $i * 3600 ?>" <?php selected( $i * 3600, $staff->getWorkingTimeLimit() ) ?>><?php echo BooklyLib\Utils\DateTime::secondsToInterval( $i * 3600 ) ?></option>
            <?php endfor ?>
        </select>
        <small class="form-text text-muted"><?php esc_html_e( 'This setting allows limiting the total time occupied by bookings per day for staff member. Padding time is not included.', 'bookly' ) ?></small>
    </div>
    <div class="form-group bookly-js-icalendar-feed d-none">
        <label for="bookly-icalendar-feed"><?php esc_html_e( 'ICalendar feed', 'bookly' ) ?></label>
        <div class="custom-control custom-radio">
            <input type="radio" id="bookly-icalendar-feed-0" name="icalendar" value="0"<?php checked( ! $staff->getICalendar() ) ?> class="custom-control-input"/>
            <label for="bookly-icalendar-feed-0" class="custom-control-label"><?php esc_html_e( 'Disabled', 'bookly' ) ?></label>
        </div>
        <div class="custom-control custom-radio">
            <input type="radio" id="bookly-icalendar-feed-1" name="icalendar" value="1"<?php checked( $staff->getICalendar() ) ?> class="custom-control-input"/>
            <label for="bookly-icalendar-feed-1" class="custom-control-label"><?php esc_html_e( 'Enabled', 'bookly' ) ?></label>
        </div>
        <small class="form-text text-muted"><?php esc_html_e( 'If enabled, you\'ll get the ICalendar feed URL which can be used in other calendars for displaying staff member appointments.', 'bookly' ) ?></small>
    </div>
    <div class="border-left ml-4 pl-3 d-none" id="bookly-icalendar-days-offset">
        <div class="form-group">
            <label for="bookly-icalendar-url"><?php esc_html_e( 'ICalendar feed URL', 'bookly' ) ?></label>
            <textarea rows="3" class="form-control readonly" id="bookly-icalendar-url" readonly><?php echo admin_url( 'admin-ajax.php?action=bookly_pro_staff_icalendar&token=' . $staff->getICalendarToken() ) ?></textarea>
        </div>
        <div class="form-group">
            <label for="bookly-icalendar-days-before"><?php esc_html_e( 'Sync appointments history (past and future)', 'bookly' ) ?></label>
            <div class="form-row bookly-js-icalendar-offset">
                <div class="col">
                    <input type="number" id="bookly-icalendar-days-before" class="form-control" name="icalendar_days_before" value="<?php echo esc_attr( $staff->getICalendarDaysBefore() ) ?>" min="0" step="1"/>
                </div>
                <div class="col">
                    <input type="number" id="bookly-icalendar-days-after" class="form-control" name="icalendar_days_after" value="<?php echo esc_attr( $staff->getICalendarDaysAfter() ) ?>" min="0" step="1"/>
                </div>
            </div>
            <small class="form-text text-muted"><?php esc_html_e( 'Specify how many days of past and future calendar data you wish to display. If you enter 0 in either field, past or future appointments will not be displayed.', 'bookly' ) ?></small>
        </div>
    </div>
    <div class="form-group">
        <label for="bookly-timezone"><?php esc_html_e( 'Timezone', 'bookly' ) ?></label>
        <select name="time_zone" class="form-control custom-select mb-2" id="bookly-timezone">
            <option value=""><?php esc_html_e( 'Default', 'bookly' ) ?></option>
            <?php echo wp_timezone_choice( $staff->getTimeZone( false ) ?: 'default' ) ?>
        </select>
        <small class="form-text text-muted"><?php esc_html_e( 'Default: UTC (Coordinated Universal Time)', 'bookly' ) ?></small>
    </div>
</form>