<?php
/**
 * Customer new account email
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/emails/customer-new-account.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce\Templates\Emails
 * @version 3.7.0
 */

defined( 'ABSPATH' ) || exit;

do_action( 'woocommerce_email_header', $email_heading, $email ); ?>

<?php /* translators: %s: Customer username */ ?>
<p><?php printf( esc_html__( 'Hi %s,', 'woocommerce' ), esc_html( $user_login ) ); ?></p>
<?php /* translators: %1$s: Site title, %2$s: Username, %3$s: My account link */ ?>
<p>Thanks for creating an account on Matriarchy Build. We’re built by women, built for everyone. Get ready to Build the Matriarchy one renovation project at a time!</p>
<p>You can access your account to view orders, change your password, and more at: <a href="<?= site_url();?>/my-account"><?= site_url();?>/my-account</a></p>
<br/>
<p>We look forward to helping you tackle your next project.</p>
<p>Lacey + Gabriella + the Pros of MBuild</p><?php if ( 'yes' === get_option( 'woocommerce_registration_generate_password' ) && $password_generated ) : ?>
	<?php /* translators: %s: Auto generated password */ ?>
	<p><?php printf( esc_html__( 'Your password has been automatically generated: %s', 'woocommerce' ), '<strong>' . esc_html( $user_pass ) . '</strong>' ); ?></p>
<?php endif; ?>

<?php

do_action( 'woocommerce_email_footer', $email );
