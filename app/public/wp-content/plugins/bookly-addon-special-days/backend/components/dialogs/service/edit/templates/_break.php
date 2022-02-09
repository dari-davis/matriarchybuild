<?php if ( ! defined( 'ABSPATH' ) ) exit; // Exit if accessed directly ?>
<div class="btn-group btn-group-sm mt-1">
    <button type="button" class="btn btn-info bookly-js-toggle-popover bookly-js-break-interval"
            data-ssd_break_id="<?php echo $service_special_days_break_id ?>"
            data-ssd_id="<?php echo $service_special_day_id ?>"
    >
        <?php echo \Bookly\Lib\Utils\DateTime::formatInterval( $start_time, $end_time ) ?>
    </button>
    <button type="button" title="<?php esc_attr_e( 'Delete break', 'bookly' ) ?>" class="btn btn-info delete-break" data-ssd_break_id="<?php echo $service_special_days_break_id ?>" data-style="zoom-in" data-spinner-size="20"><span class="ladda-label">&times;</span></button>
</div>