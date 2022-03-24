<?php if (!defined('ABSPATH')) exit;
use Bookly\Backend\Components\Dialogs\Staff\Edit\Proxy;
use Bookly\Backend\Components\Controls\Buttons;
/**
 * @var \Bookly\Lib\Entities\Staff $staff
 */
?>
<form>
    <div class="row gx-0 d-flex align-items-center">
        <div class="col-md-9">
        <?php echo Proxy\Pro::getAdvancedHtml( $staff, array(), false ) ?>
        </div>
        <div class="col-md-3 text-end">
        <span class="bookly-js-advanced-error text-danger"></span>
        <?php Buttons::renderSubmit( 'bookly-advanced-save' ) ?>
        </div>
    </div>
</form>