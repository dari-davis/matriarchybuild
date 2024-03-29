<?php
/**
 * Checkout Payment Section
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/checkout/payment.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see     https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce\Templates
 * @version 3.5.3
 */

defined( 'ABSPATH' ) || exit;

if ( ! is_ajax() ) {
	do_action( 'woocommerce_review_order_before_payment' );
}
?>
<div id="payment" class="woocommerce-checkout-payment">
    <div class="row align-items-end">
        <div class="woocommerce__section col-md-8">
            <?php if ( WC()->cart->needs_payment() ) : ?>
                <ul class="wc_payment_methods payment_methods methods">
                    <?php
                    if ( ! empty( $available_gateways ) ) {
                        foreach ( $available_gateways as $gateway ) {
                            wc_get_template( 'checkout/payment-method.php', array( 'gateway' => $gateway ) );
                        }
                    } else {
                        echo '<li class="woocommerce-notice woocommerce-notice--info woocommerce-info">' . apply_filters( 'woocommerce_no_available_payment_methods_message', WC()->customer->get_billing_country() ? esc_html__( 'Sorry, it seems that there are no available payment methods for your state. Please contact us if you require assistance or wish to make alternate arrangements.', 'woocommerce' ) : esc_html__( 'Please fill in your details above to see available payment methods.', 'woocommerce' ) ) . '</li>'; // @codingStandardsIgnoreLine
                    }
                    ?>
                </ul>

            <?php endif; ?>
        </div>
            
        <div class="woocommerce__section">
			<div class="woocommerce-additional-fields__field-wrapper">
				<h3>Note For Your Pro</h3>
				<p>Give us an overview of your project.</p>
				<div class="row">
					<div class="col-md-8">
						<?php foreach ( $checkout->get_checkout_fields( 'order' ) as $key => $field ) : ?>
							<?php woocommerce_form_field( $key, $field, $checkout->get_value( $key ) ); ?>
						<?php endforeach; ?>
					</div>
					<div class="col-md-4">After completing your booking you will be able to share more details and upload photos to review during your session.</div>
				</div>
			</div>
		</div>

        <div class="row klaviyo">
            <div class="col-md-8">
                <p class="form-row kl_newsletter_checkbox_field mb-3" id="kl_newsletter_checkbox_field" data-priority=""><span class="woocommerce-input-wrapper"><label class="checkbox ">
					<label class="container">
                        <input type="checkbox" class="input-checkbox " name="kl_newsletter_checkbox" id="kl_newsletter_checkbox" value="1" checked><span>Sign me up to receive news and email updates</span>
                        <span class="checkmark"></span>
                    </label>
                </p>
            </div>
        </div>

        <div class="row">
            <div class="col-md-8">
                <div class="form-row place-order mb-0 mt-1">
                    <noscript>
                        <?php
                        /* translators: $1 and $2 opening and closing emphasis tags respectively */
                        printf( esc_html__( 'Since your browser does not support JavaScript, or it is disabled, please ensure you click the %1$sUpdate Totals%2$s button before placing your order. You may be charged more than the amount stated above if you fail to do so.', 'woocommerce' ), '<em>', '</em>' );
                        ?>
                        <br/><button type="submit" class="button alt" name="woocommerce_checkout_update_totals" value="<?php esc_attr_e( 'Update totals', 'woocommerce' ); ?>"><?php esc_html_e( 'Update totals', 'woocommerce' ); ?></button>
                    </noscript>

                    <?php echo apply_filters( 'woocommerce_order_button_html', '<button type="submit" class="button alt" name="woocommerce_checkout_place_order" id="place_order" value="' . esc_attr( $order_button_text ) . '" data-value="' . esc_attr( $order_button_text ) . '">' . esc_html( $order_button_text ) . '</button>' ); // @codingStandardsIgnoreLine ?>

                    <?php do_action( 'woocommerce_review_order_after_submit' ); ?>

                    <?php wp_nonce_field( 'woocommerce-process_checkout', 'woocommerce-process-checkout-nonce' ); ?>
                </div>
            </div>
            <div class="col-md-4"><?php wc_get_template( 'checkout/terms.php' ); ?></div>
        </div>
    </div>
</div>
<?php
if ( ! is_ajax() ) {
	do_action( 'woocommerce_review_order_after_payment' );
}
