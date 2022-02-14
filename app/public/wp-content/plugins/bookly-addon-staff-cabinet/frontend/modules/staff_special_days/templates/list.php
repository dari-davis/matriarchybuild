<?php if ( ! defined( 'ABSPATH' ) ) exit; // Exit if accessed directly
use Bookly\Backend\Components\Controls\Buttons;
use Bookly\Backend\Components\Schedule\Component as ScheduleComponent;
use Bookly\Backend\Modules\Staff\Forms\Widgets\TimeChoice;

$working_end   = new TimeChoice( array( 'use_empty' => false, 'type' => 'to' ) );
$working_start = new TimeChoice( array( 'use_empty' => false, 'type' => 'from' ) );
?>
<div>
    <form>
        <?php foreach ( $special_days as $day ) : ?>
            <?php self::renderTemplate( '_row', compact( 'day', 'working_start', 'working_end' ) ) ?>
        <?php endforeach ?>
        <input type="hidden" name="staff_id" value="<?php echo $staff_id ?>">
        <div class="row no-gutters pt-3">
            <div class="col-6">
                <?php Buttons::render( 'bookly-js-special-days-add-day', 'bookly-button btn-success', __( 'Add day', 'bookly' ), array( 'style' => '' ) ) ?>
            </div>
            <div class="col-6 d-flex justify-content-end">
                <div class="d-inline-flex me-2">
                <?php Buttons::renderDelete( 'bookly-js-special-days-delete-all', 'bookly-button', __( 'Delete', 'bookly'), array( 'style' => '' ) ) ?>
                </div>
                <div class="d-inline-flex">
                <?php Buttons::renderSubmit( 'bookly-js-special-days-save-days', 'bookly-button' ) ?></div>
            </div>
            <div><span class="bookly-special-days-error text-danger"></span></div>
        </div>
    </form>
    <?php ScheduleComponent::renderBreakDialog() ?>
</div>