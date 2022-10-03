<?php
/**
 * Customer new account email - text.
 *
 * This is intended as a replacement to WC_Email_Customer_New_Account(),
 * with a set password link instead of including the new password in email
 * content.
 *
 * @package  WooCommerce/Blocks
 */

defined( 'ABSPATH' ) || exit;

echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
echo esc_html( wp_strip_all_tags( $email_heading ) );
echo "\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";

/* translators: %s: Customer username */
echo sprintf( esc_html__( 'Hi %s,', 'woocommerce' ), esc_html( $user_login ) ) . "\n\n";
/* translators: %1$s: Site title, %2$s: Username, %3$s: My account link */ ?>
<p>Thanks for creating an account on Matriarchy Build. We’re built by women, built for everyone. Get ready to Build the Matriarchy one renovation project at a time!</p>
<p>You can access your account to view orders, change your password, and more at: <a href="<?= site_url();?>/my-account"><?= site_url();?>/my-account</a></p>
<br/>
<p>We look forward to helping you tackle your next project.</p>
<p>Lacey + Gabriella + the Pros of MBuild</p>
<?php
if ( $set_password_url ) {
	echo esc_html__( 'To set your password, visit the following address: ', 'woocommerce' ) . "\n\n";
	echo esc_html( $set_password_url ) . "\n\n";
}

echo wp_kses_post( apply_filters( 'woocommerce_email_footer_text', get_option( 'woocommerce_email_footer_text' ) ) );
