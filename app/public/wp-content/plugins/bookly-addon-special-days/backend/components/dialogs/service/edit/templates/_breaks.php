<?php if ( ! defined( 'ABSPATH' ) ) exit; // Exit if accessed directly ?>
<?php if ( $breaks ) : ?>
    <div class="text-mutted small d-block d-sm-none">
        <?php esc_html_e( 'Breaks', 'bookly' ) ?>
    </div>
<?php endif ?>

<div class="bookly-js-breaks-list">
    <?php foreach ( $breaks as $break ) {
        $self::renderTemplate( '_break', array(
            'start_time'                  => $break['start_time'],
            'end_time'                    => $break['end_time'],
            'service_special_days_break_id' => $break['id'],
            'service_special_day_id'      => $service_special_day_id,
        ) );
    } ?>
</div>