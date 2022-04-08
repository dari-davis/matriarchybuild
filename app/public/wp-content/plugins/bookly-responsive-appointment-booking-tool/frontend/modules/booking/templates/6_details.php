<?php if ( ! defined( 'ABSPATH' ) ) exit; // Exit if accessed directly
use Bookly\Lib;
use Bookly\Lib\Utils\Common;
use Bookly\Frontend\Modules\Booking\Proxy;
use Bookly\Frontend\Components;

/** @var \Bookly\Lib\UserBookingData $userData */
echo Common::stripScripts( $progress_tracker );
?>

<?php if ( $info_text_guest ) : ?>
    <div class="bookly-box bookly-js-guest mb-0"><?php echo Common::html( $info_text_guest ) ?></div>
<?php endif ?>
<?php if ( ! get_current_user_id() && ! $userData->getFacebookId() && ( Lib\Config::showLoginButton() || Lib\Proxy\Pro::showFacebookLoginButton() ) ) : ?>
<div class="bookly-box bookly-guest bookly-js-guest">
    <h3 class="bookly-form__heading">Sign In</h3>
    <?php if ( Lib\Config::showLoginButton() ) : ?>
        <button class="bookly-btn bookly-js-login-show ladda-button"><?php echo Common::getTranslatedOption( 'bookly_l10n_step_details_button_login' ) ?></button>
    <?php endif ?>
    <?php Proxy\Pro::renderFacebookButton() ?>
    
</div>
<?php endif ?>

<div class="bookly__create-account pt-5">
    <div class="bookly-details-step">
        <?php if (is_user_logged_in()): ?>
            <h3 class="bookly-form__heading">Confirm your appointment details</h3>
        <?php else: ?>
            <h3 class="bookly-form__heading">Don't Have An Account?</h3>
        <?php endif; ?>
        <div class="bookly-box bookly-table d-flex flex-column">
            <div class="bookly-form-group mb-2">
                <label><?php echo Common::getTranslatedOption( 'bookly_l10n_label_first_name' ) ?></label>
                <div>
                    <input class="bookly-js-first-name" type="text" value="<?php echo esc_attr( $userData->getFirstName() ) ?>" placeholder="First Name"/>
                </div>
                <div class="bookly-js-first-name-error bookly-label-error"></div>
            </div>
            <div class="bookly-form-group mb-2">
                <label><?php echo Common::getTranslatedOption( 'bookly_l10n_label_last_name' ) ?></label>
                <div>
                    <input class="bookly-js-last-name" type="text" value="<?php echo esc_attr( $userData->getLastName() ) ?>" placeholder="Last Name"/>
                </div>
                <div class="bookly-js-last-name-error bookly-label-error"></div>
            </div>

            <?php $self::renderTemplate( '_details_email', compact('userData') ) ?>

            <?php if ( Lib\Config::showFirstLastName() && Lib\Config::showEmailConfirm() ) : ?>
                <?php $self::renderTemplate( '_details_email_confirm', compact('userData') ) ?>
            <?php endif ?>
            <div class="bookly-form-group">
                <label><?php echo Common::getTranslatedOption( 'bookly_l10n_label_phone' ) ?></label>
                <div>
                    <input class="bookly-js-user-phone-input<?php if ( get_option( 'bookly_cst_phone_default_country' ) != 'disabled' ) : ?> bookly-user-phone<?php endif ?>" value="<?php echo esc_attr( $userData->getPhone() ) ?>" type="tel" placeholder="Phone Number" />
                </div>
                <div class="bookly-js-user-phone-error bookly-label-error"></div>
            </div>
        </div>
        <?php if ( ! Lib\Config::showFirstLastName() && Lib\Config::showEmailConfirm() ) : ?>
            <div class="bookly-box bookly-table">
                <?php $self::renderTemplate( '_details_email', compact( 'userData' ) ) ?>
                <?php $self::renderTemplate( '_details_email_confirm', compact( 'userData' ) ) ?>
            </div>
        <?php endif ?>

        <?php Proxy\Pro::renderDetailsAddress( $userData ) ?>
        <?php Proxy\Pro::renderDetailsBirthday( $userData ) ?>

        <?php Proxy\CustomerInformation::renderDetailsStep( $userData ) ?>
        <?php Proxy\Shared::renderCustomFieldsOnDetailsStep( $userData ) ?>
        
        <?php if ( get_option( 'bookly_app_show_terms', false ) ): ?>
            <div class="bookly-box">
                <div class="bookly-checkbox-group" style="line-height: 28px;">
                    <input type="checkbox" class="bookly-js-terms" id="bookly-terms-<?php echo $userData->getFormId() ?>">
                    <label class="bookly-square bookly-checkbox" style="width:28px; float:left; margin-left: 0; margin-right: 5px;" for="bookly-terms-<?php echo $userData->getFormId() ?>">
                        <i class="bookly-icon-sm"></i>
                    </label>
                    <label for="bookly-terms-<?php echo $userData->getFormId() ?>">
                        <?php echo Common::getTranslatedOption( 'bookly_l10n_label_terms' ) ?>
                    </label>
                </div>
                <div class="bookly-js-terms-error bookly-label-error"></div>
            </div>
        <?php endif ?>
    </div>

    <?php Proxy\RecurringAppointments::renderInfoMessage( $userData ) ?>

    <div class="bookly-box bookly-nav-steps">
        <button class="bookly-next-step bookly-js-next-step bookly-btn ladda-button" data-style="zoom-in" data-spinner-size="40">
            <?php if (is_user_logged_in()): ?>
                <span class="ladda-label">Sign In</span>
            <?php else: ?>
                <span class="ladda-label">Sign Up</span>
            <?php endif; ?>
        </button>
    </div>
</div>