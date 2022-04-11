<?php
  /*
   * Template name: Create Account Page
   */
?>
<?php if(is_user_logged_in()){
  wp_redirect(get_permalink(get_option('woocommerce_myaccount_page_id')));
} ?>
<?php get_header();?>
<?php do_action( 'woocommerce_before_customer_login_form' ); ?>

<div class="main__row row no-gutters m-0 position-relative page woocommerce-page">
	<div class="col-12 p-0">
		<div class="mx-auto">
			<div class="my-account my-account--create">
				<div class="my-account__wrapper woocommerce">
					<div class="row custom-registration gx-0">

						<div class="col-md-6 mb-3 mb-md-0 pb-5 mb-borders--right mb-borders--desktop-only pe-md-4">
							<h2><?php esc_html_e( 'Create Your Account', 'woocommerce' ); ?></h2>

							<form method="post" class="woocommerce-form woocommerce-form-register register mt-3 mb-3 mb-md-0" <?php do_action( 'woocommerce_register_form_tag' ); ?> >

								<?php do_action( 'woocommerce_register_form_start' ); ?>

								<p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
									<label for="reg_email" class="visually-hidden"><?php esc_html_e( 'Email Address', 'woocommerce' ); ?>&nbsp;<span class="required">*</span></label>
									<input type="email" class="woocommerce-Input woocommerce-Input--text input-text" name="email" id="reg_email" autocomplete="email" placeholder="Email" value="<?php echo ( ! empty( $_POST['email'] ) ) ? esc_attr( wp_unslash( $_POST['email'] ) ) : ''; ?>" /><?php // @codingStandardsIgnoreLine ?>
								</p>

								<?php if ( 'no' === get_option( 'woocommerce_registration_generate_password' ) ) : ?>
									<p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
										<label for="reg_password" class="visually-hidden"><?php esc_html_e( 'Password', 'woocommerce' ); ?>&nbsp;<span class="required">*</span></label>
										<input type="password" class="woocommerce-Input woocommerce-Input--text input-text" name="password" id="reg_password" placeholder="Password" autocomplete="new-password" />
									</p>
								<?php else : ?>
									<p><?php esc_html_e( 'A password will be sent to your email address.', 'woocommerce' ); ?></p>
								<?php endif; ?>

								<p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
									<p class="small">By creating my account, I agree to Matriarchy Build's <a href="<?= home_url('/terms-of-use'); ?>" target="_blank">Terms of Use</a>.</p>
								</p>

								<p class="woocommerce-form-row form-row">
									<?php wp_nonce_field( 'woocommerce-register', 'woocommerce-register-nonce' ); ?>
									<button type="submit" class="woocommerce-button button alt woocommerce-form-register__submit" name="register" value="<?php esc_attr_e( 'Create Account', 'woocommerce' ); ?>"><?php esc_html_e( 'Create Account', 'woocommerce' ); ?></button>
								</p>

								<?php do_action( 'woocommerce_register_form_end' ); ?>

							</form>
						</div>

						<div class="col-md-6 mb-3 mb-md-0 pb-5 ps-md-4 register">
							<h2><?php esc_html_e( 'Are You A Pro?', 'woocommerce' ); ?></h2>
							<p class="p-explainer">If you’d like to join our roster of Matriarchy Build Pros please click here to fill out our simple questionnaire. The Matriarchy Build roster features Pros that are available for 1:1 video consultations with folks tackling DIY and home renovation projects.</p>
							<a class="button alt" href="<?= site_url('apply'); ?>">Apply to Be a Pro</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<?php do_action( 'woocommerce_after_customer_login_form' ); ?>

<?php get_footer();?>