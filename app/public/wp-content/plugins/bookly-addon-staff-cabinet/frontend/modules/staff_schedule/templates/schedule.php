<?php if ( ! defined( 'ABSPATH' ) ) exit; // Exit if accessed directly
use Bookly\Backend\Components\Controls\Buttons;
/** @var Bookly\Backend\Components\Schedule\Component $schedule */
?>
<form>
    <?php $schedule->render() ?>
    <?php foreach ( $ss_ids as $id => $index ) : ?>
        <input type="hidden" name="ssi[<?php echo $id ?>]" value="<?php echo $index ?>" />
    <?php endforeach ?>

    <div class="row no-gutters pt-3">
        <div class="col-6 d-inline-flex">
            <?php Buttons::renderSubmit( 'bookly-schedule-save', 'bookly-button' ) ?>
            <button class="time-off-btn btn ladda-button btn-default bookly-button ms-2">Schedule Time Off</button>
        </div>
        <div class="col-6 d-flex justify-content-end">
            <?php Buttons::renderReset( 'bookly-schedule-reset', 'bookly-button', null, array(
                'data-default-breaks' => json_encode( $schedule->getBreaksArray() ),
                'data-spinner-color' => 'rgb(62, 66, 74)',
            ) ) ?>
        </div>
    </div>
</form>