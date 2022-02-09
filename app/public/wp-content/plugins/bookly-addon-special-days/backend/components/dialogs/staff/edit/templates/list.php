<?php if ( ! defined( 'ABSPATH' ) ) exit; // Exit if accessed directly
use Bookly\Backend\Components\Controls\Buttons;
use Bookly\Backend\Components\Schedule\Component as ScheduleComponent;
use Bookly\Backend\Components\Dialogs\Staff\Edit\Proxy;
?>
<div>
    <form>
        <?php Proxy\Locations::renderLocationSwitcher( $staff_id, $location_id, 'custom_special_days' ) ?>
        <div id="bookly-staff-special-days">
            <?php foreach ( $special_days as $day ) : ?>
                <?php $self::renderTemplate( '_row', compact( 'day', 'working_start', 'working_end' ) ) ?>
            <?php endforeach ?>
            <input type="hidden" name="staff_id" value="<?php echo $staff_id ?>">
            <div>
                <?php Buttons::render( 'bookly-js-special-days-add-day', 'btn-success', __( 'Add special day', 'bookly' ), array( 'style' => 'margin-bottom: 12px' ), '<i class="fas fa-fw fa-plus mr-lg-1"></i>{caption}' ) ?>
            </div>
            <div class="text-right">
                <?php Buttons::renderDelete( 'bookly-js-special-days-delete-all', null, null, array( 'style' => 'margin: 12px 0 12px 0' ) ) ?>
            </div>
            <div class="bookly-js-modal-footer text-right">
                <hr/>
                <span class="bookly-special-days-error text-danger"></span>
                <?php Buttons::renderSubmit( 'bookly-js-special-days-save-days' ) ?>
                <?php Buttons::renderReset( 'bookly-js-special-days-reset' ) ?>
            </div>
        </div>
    </form>
    <?php ScheduleComponent::renderBreakDialog() ?>
</div>