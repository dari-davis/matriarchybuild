<?php if ( ! defined( 'ABSPATH' ) ) exit; // Exit if accessed directly ?>
<div class="bookly-js-login d-none">
    <form>
        <div class="bookly-modal-body bookly-form">
        <h3 class="bookly-form__heading"><?php esc_html_e( 'Sign In', 'bookly' ) ?></h3>
            <div class="bookly-form-group mb-2">
                <label><?php esc_html_e( 'Username' ) ?></label>
                <div>
                    <input type="text" name="log" required placeholder="Email"/>
                </div>
            </div>
            <div class="bookly-form-group">
                <label><?php esc_html_e( 'Password' ) ?></label>
                <div>
                    <input type="password" name="pwd" required placeholder="Password"/>
                </div>
            </div>
            <div class="bookly-label-error"></div>
            <div class="mt-2">
                <label>
                    <input type="checkbox" name="rememberme" />
                    <span><?php esc_html_e( 'Remember Me' ) ?></span>
                </label>
            </div>
        </div>
        <button class="bookly-btn-submit ladda-button mb-3" type="submit" data-spinner-size="40" data-style="zoom-in">
            <span class="ladda-label"><?php esc_html_e( 'Sign In' ) ?></span>
        </button>
    </form>
    <a class="bookly-btn-cancel mb-2 button--text small" href="<?php echo esc_url( wp_lostpassword_url() ) ?>" target="_blank"><?php esc_html_e( 'Lost your password?' ) ?></a>
</div>