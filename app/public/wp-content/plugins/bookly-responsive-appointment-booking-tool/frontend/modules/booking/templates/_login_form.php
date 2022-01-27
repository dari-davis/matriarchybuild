<?php if ( ! defined( 'ABSPATH' ) ) exit; // Exit if accessed directly ?>
<div class="bookly-modal bookly-fade bookly-js-modal bookly-js-login">
    <div class="bookly-modal-dialog">
        <div class="bookly-modal-content">
            <form>
                <div class="bookly-modal-header">
                    <button type="button" class="bookly-close bookly-js-close">×</button>
                </div>
                <div class="bookly-modal-body bookly-form">
                <h3 class="bookly-form__heading"><?php esc_html_e( 'Login', 'bookly' ) ?></h3>
                    <div class="bookly-form-group">
                        <label><?php esc_html_e( 'Username' ) ?></label>
                        <div>
                            <input type="text" name="log" required placeholder="Username or Email Address"/>
                        </div>
                    </div>
                    <div class="bookly-form-group">
                        <label><?php esc_html_e( 'Password' ) ?></label>
                        <div>
                            <input type="password" name="pwd" required placeholder="Password"/>
                        </div>
                    </div>
                    <div class="bookly-label-error"></div>
                    <div>
                        <div>
                            <label>
                                <input type="checkbox" name="rememberme" />
                                <span><?php esc_html_e( 'Remember Me' ) ?></span>
                            </label>
                        </div>
                    </div>
                </div>
                <div class="bookly-modal-footer">
                    <a class="bookly-left bookly-btn-cancel mb-3 button--text" href="<?php echo esc_url( wp_lostpassword_url() ) ?>" target="_blank"><?php esc_html_e( 'Lost your password?' ) ?></a>
                    <button class="bookly-btn-submit ladda-button mb-3" type="submit" data-spinner-size="40" data-style="zoom-in">
                        <span class="ladda-label"><?php esc_html_e( 'Log In' ) ?></span>
                    </button>
                    <a href="#" class="bookly-btn-cancel bookly-js-close button--text"><?php esc_html_e( 'Cancel' ) ?></a>
                </div>
            </form>
        </div>
    </div>
</div>