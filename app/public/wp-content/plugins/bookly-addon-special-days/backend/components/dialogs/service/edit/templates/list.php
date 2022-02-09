<?php if (!defined('ABSPATH')) exit; // Exit if accessed directly
use Bookly\Backend\Components\Controls\Buttons;
use Bookly\Backend\Components\Schedule\Component as ScheduleComponent;
?>
<div class="bookly-js-service-special-days-container">
    <div class="bookly-js-special-days-list">
        <?php foreach ( $special_days as $day ) : ?>
            <?php $self::renderTemplate( '_row', compact( 'day', 'working_start', 'working_end' ) ) ?>
        <?php endforeach ?>
    </div>
    <div class="form-group">
        <?php Buttons::render( null, 'bookly-js-service-special-days-add-day btn-success', __( 'Add special day', 'bookly' ), array(), '<i class="fas fa-fw fa-plus mr-1"></i>{caption}' ) ?>
    </div>
    <div class="text-right">
        <?php Buttons::renderDelete( 'bookly-js-service-special-days-delete' ) ?>
    </div>
</div>
<?php ScheduleComponent::renderBreakDialog() ?>