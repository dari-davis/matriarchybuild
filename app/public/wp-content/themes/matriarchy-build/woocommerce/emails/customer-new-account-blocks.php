<?php
/**
 * Customer new account email - html.
 *
 * This is intended as a replacement to WC_Email_Customer_New_Account(),
 * with a set password link instead of including the new password in email
 * content.
 *
 * @package  WooCommerce/Blocks
 */

defined( 'ABSPATH' ) || exit;

do_action( 'woocommerce_email_header', $email_heading, $email ); ?>

<?php /* translators: %s: Customer username */ ?>
<p><?php printf( esc_html__( 'Hello %s,', 'woocommerce' ), esc_html( $user_login ) ); ?></p>
<?php /* translators: %1$s: Site title, %2$s: Username, %3$s: My account link */ ?>
<p>Thanks for creating an account on Matriarchy Build. We’re built by women, built for everyone. Get ready to Build the Matriarchy one renovation project at a time!</p>
<p>You can access your account to view orders, change your password, and more at: <a href="<?= site_url();?>/my-account"><?= site_url();?>/my-account</a></p>
<br/>
<p>We look forward to helping you tackle your next project.</p>
<p>Lacey + Gabriella + the Pros of MBuild</p>

<?php if ( $set_password_url ) : ?>
	<p><a href="<?php echo esc_attr( $set_password_url ); ?>"><?php printf( esc_html__( 'Click here to set your new password.', 'woocommerce' ) ); ?></a></p>
<?php endif; ?>

<?php

do_action( 'woocommerce_email_footer', $email );
