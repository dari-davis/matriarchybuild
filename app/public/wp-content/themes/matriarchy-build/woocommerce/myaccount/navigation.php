<?php
/**
 * My Account navigation
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/myaccount/navigation.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see     https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce\Templates
 * @version 2.6.0
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit;
}

do_action( 'woocommerce_before_account_navigation' );
?>

<nav class="py-4 ms-md-4 me-md-3 woocommerce-MyAccount-navigation account-nav">
	<div class="account-nav__heading">Consultations</div>
	<ul class="list-unstyled">
		<li><a class="text-button text-button--blue-pink" href="<?= wc_get_account_endpoint_url('upcoming-consultations'); ?>">Upcoming</a></li>
		<?php if (in_array('pro_user', (array) wp_get_current_user()->roles)): ?>
			<li><a class="text-button text-button--blue-pink" href="<?= wc_get_account_endpoint_url('pro-past-consultations'); ?>">Past</a></li>
		<?php else: ?>
			<li><a class="text-button text-button--blue-pink" href="<?= wc_get_account_endpoint_url('past-consultations'); ?>">Past</a></li>
		<?php endif; ?>
	</ul>
	<hr/>
	<?php if (in_array('pro_user', (array) wp_get_current_user()->roles)): ?>
		<div class="account-nav__heading">Consultation Settings</div>
			<ul class="list-unstyled">
				<li><a class="text-button text-button--blue-pink" href="<?= wc_get_account_endpoint_url('schedule'); ?>">Set Schedule</a></li>
				<li><a class="text-button text-button--blue-pink" href="<?= wc_get_account_endpoint_url('pricing'); ?>">Set Pricing</a></li>
			</ul>
		<hr/>
	<?php endif; ?>
	<div class="account-nav__heading">Settings</div>
	<ul class="list-unstyled">
		<?php foreach ( wc_get_account_menu_items() as $endpoint => $label ) : ?>
			<li class="<?php echo wc_get_account_menu_item_classes( $endpoint ); ?>">
				<a class="text-button text-button--blue-pink" href="<?php echo esc_url( wc_get_account_endpoint_url( $endpoint ) ); ?>"><?php echo esc_html( $label ); ?></a>
			</li>
		<?php endforeach; ?>
	</ul>
	<hr/>
	<a class="text-button text-button--blue-pink" href="<?= wc_logout_url(); ?>">Logout</a>
</nav>

<?php do_action( 'woocommerce_after_account_navigation' ); ?>
