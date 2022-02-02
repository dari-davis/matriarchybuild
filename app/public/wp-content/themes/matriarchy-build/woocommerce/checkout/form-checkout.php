<?php
/**
 * Checkout Form
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/checkout/form-checkout.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce\Templates
 * @version 3.5.0
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit;
}

do_action( 'woocommerce_before_checkout_form', $checkout );

// If checkout registration is disabled and not logged in, the user cannot checkout.
if ( ! $checkout->is_registration_enabled() && $checkout->is_registration_required() && ! is_user_logged_in() ) {
	echo esc_html( apply_filters( 'woocommerce_checkout_must_be_logged_in_message', __( 'You must be logged in to checkout.', 'woocommerce' ) ) );
	return;
}

?>

<form name="checkout" method="post" class="checkout woocommerce-checkout" action="<?php echo esc_url( wc_get_checkout_url() ); ?>" enctype="multipart/form-data">

<?php do_action( 'woocommerce_checkout_before_order_review_heading' ); ?>
	
	<div class="woocommerce__section">
		<h3 id="order_review_heading"><?php esc_html_e( 'Your Consultation', 'woocommerce' ); ?></h3>
		
		<?php do_action( 'woocommerce_checkout_before_order_review' ); ?>

		<div id="order_review" class="woocommerce-checkout-review-order">
			<?php do_action( 'woocommerce_checkout_order_review' ); ?>
		</div>

		<?php do_action( 'woocommerce_checkout_after_order_review' ); ?>
	</div>

	<div class="woocommerce__section">
		<!-- Account Details -->
		

	</div>

	<?php if ( $checkout->get_checkout_fields() ) : ?>

		<div class="woocommerce__section">
		<div class="woocommerce-additional-fields__field-wrapper">
			<h3>Note For Your Pro</h3>
			<p>What would you like to discuss during your consultation? (optional)</p>
			<div class="row">
				<div class="col-6">
					<?php foreach ( $checkout->get_checkout_fields( 'order' ) as $key => $field ) : ?>
						<?php woocommerce_form_field( $key, $field, $checkout->get_value( $key ) ); ?>
					<?php endforeach; ?>
				</div>
				<div class="col-6">
					After completing your booking you will be able to give your Expert more project details by filling out a quick survey & you can upload files to review during your consultation.
				</div>
    		</div>
		</div>
					</div>
		
		<div class="woocommerce__section">
			<?php do_action( 'woocommerce_checkout_before_customer_details' ); ?>

			<div class="row">
				<div id="customer_details" class="col-6">
					<?php do_action( 'woocommerce_checkout_billing' ); ?>
				</div>
			</div>

			<?php do_action( 'woocommerce_checkout_after_customer_details' ); ?>

			<?php if ( ! is_user_logged_in() && $checkout->is_registration_enabled() ) : ?>
				<?php do_action( 'woocommerce_before_checkout_registration_form', $checkout ); ?>
				<div class="row align-items-center">
					<div class="col-6">
						<?php if ( $checkout->get_checkout_fields( 'account' ) ) : ?>
							<?php foreach ( $checkout->get_checkout_fields( 'account' ) as $key => $field ) : ?>
								<?php woocommerce_form_field( $key, $field, $checkout->get_value( $key ) ); ?>
							<?php endforeach; ?>
							<div class="clear"></div>
						<?php endif; ?>
					</div>
					<div class="col-6">set your password</div>
				</div>
				<?php do_action( 'woocommerce_after_checkout_registration_form', $checkout ); ?>
			<?php endif; ?>
		</div>

		<div class="woocommerce__section">
			<h3>Payment Info</h3>
			<?php do_action( 'woocommerce_checkout_payment' ); ?>
		</div>
	<?php endif; ?>
</form>

<?php do_action( 'woocommerce_after_checkout_form', $checkout ); ?>
