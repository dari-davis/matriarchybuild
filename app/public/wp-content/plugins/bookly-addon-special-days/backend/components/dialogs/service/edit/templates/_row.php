<?php if ( ! defined( 'ABSPATH' ) ) exit; // Exit if accessed directly
use Bookly\Lib\Utils\DateTime;
?>
<div class="bookly-js-range-row ssd_id-<?php echo $day['id'] ?>">
    <div class="form-row py-1 rounded-lg mb-1">
        <div class="col-lg-3">
            <input class="form-control bookly-js-date mb-2 mb-lg-0" type="text" value="<?php echo DateTime::formatDate( $day['date'] ) ?>" data-date="<?php echo $day['date'] ?>"
                   autocomplete="off" data-day_id="<?php echo $day['id'] ?>">
            <input type="hidden"
                   name="special_days[<?php echo $day['id'] ?>][date]"
                   value="<?php echo $day['date'] ?>"
            >
            <input type="hidden" name="special_days[<?php echo $day['id'] ?>][id]" value="<?php echo $day['id'] ?>">
            <div class="bookly-js-service-special-days-error"></div>
        </div>
        <div class="col-lg-5">
            <div class="form-row">
                <div class="col">
                    <?php
                    $bound = array( $day['start_time'], $day['end_time'] );
                    echo $working_start->render(
                        'special_days[' . $day['id'] . '][start_time]',
                        $day['start_time'],
                        array( 'class' => 'bookly-js-parent-range-start form-control' )
                    );
                    ?>
                </div>
                <div class="mt-2 bookly-js-invisible-on-off">
                    <?php esc_html_e( 'and', 'bookly' ) ?>
                </div>
                <div class="col bookly-js-invisible-on-off">
                    <?php
                    echo $working_end->render(
                        'special_days[' . $day['id'] . '][end_time]',
                        $day['end_time'],
                        array( 'class' => 'bookly-js-parent-range-end form-control' )
                    );
                    ?>
                </div>
            </div>
        </div>
        <div class="col-lg-4 bookly-js-service-special-days-breaks-list bookly-js-invisible-on-off">
            <button type="button" data-ssd_id="<?php echo $day['id'] ?>"
                    class="bookly-js-toggle-popover btn btn-link pl-0">
                <?php esc_html_e( 'except for', 'bookly' ) ?>
            </button>
            <div class="custom-control custom-checkbox float-right mt-2">
                <input id="bookly-sd-delete-<?php echo $day['id'] ?>" type="checkbox" class="custom-control-input" data-ssd_id="<?php echo $day['id'] ?>">
                <label for="bookly-sd-delete-<?php echo $day['id'] ?>" class="custom-control-label"></label>
            </div>
            <?php $self::renderTemplate( '_breaks', array( 'breaks' => isset( $day['breaks'] ) ? $day['breaks'] : array(), 'service_special_day_id' => $day['id'] ) ) ?>
        </div>
    </div>
</div>