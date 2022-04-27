<?php if ( ! defined( 'ABSPATH' ) ) exit; // Exit if accessed directly
use Bookly\Lib\Config;
use Bookly\Frontend\Modules\Booking\Proxy;
use Bookly\Lib\Utils\Common;
use Bookly\Lib\Utils\Price;
?>
<?php echo Common::stripScripts( $progress_tracker ) ?>
<span id="service-info" class="invisible"><?php echo Common::html( $info_text ); ?></span>

<?php Proxy\Shared::renderWaitingListInfoText() ?>
<div class="bookly-box bookly-label-error"></div>

<!-- time and date picker -->
<?php Proxy\Pro::renderTimeZoneSwitcher() ?>
<?php
  $today = date('Y-m-d');
  $dateBuffer = date('Y-m-d', strtotime($today. ' + 2 days'));
?>

<?php if ($date >= $dateBuffer): ?>
  <input class="bookly-js-selected-date" type="text" value="" data-value="<?php echo esc_attr( $date ) ?>"/>
<?php else: ?>
  <input class="bookly-js-selected-date" type="text" value="Choose a Date to Continue" data-value=""/>
<?php endif; ?>

<?php if ( $has_slots ) : ?>
  <div class="bookly-time-step">
    <div class="bookly-columnizer-wrap">
      <div class="bookly-columnizer">
        <?php /* here _time_slots */ ?>
      </div>
    </div>
  </div>
<?php else : ?>
  <div class="bookly-not-time-screen<?php if ( ! Config::showCalendar() ) : ?> bookly-not-calendar<?php endif ?>">
    <?php esc_html_e( 'No time is available for selected criteria.', 'bookly' ) ?>
  </div>
<?php endif ?>

<div class="bookly-box bookly-nav-steps bookly-clear">
  <button class="bookly-back-step bookly-js-back-step bookly-btn ladda-button" data-style="zoom-in" data-spinner-size="40">
      <span class="ladda-label"><?php echo Common::getTranslatedOption( 'bookly_l10n_button_back' ) ?></span>
  </button>
  <?php if ( $show_cart_btn ) : ?>
      <?php Proxy\Cart::renderButton() ?>
  <?php endif ?>
</div>
