<?php
/**
 * Review order table
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/checkout/review-order.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce\Templates
 * @version 5.2.0
 */

defined( 'ABSPATH' ) || exit;

global $wpdb;

// gets all the cart data
foreach ( WC()->cart->get_cart() as $wc_key => $wc_item ) {
	// staff details
	$staffId = $wc_item['bookly']['items'][0]['staff_ids'][0];
	$staffInfo = $wpdb->get_results('SELECT * FROM wp_bookly_staff WHERE id="'.$staffId.'";');
	$staffName = $staffInfo[0]->full_name;
	$staffSlug = str_replace(" ", "-", strtolower($staffName));
	$staffTrade = get_post_meta(get_page_by_path($staffSlug, OBJECT, 'pro')->ID, 'trade', true);

	// service details
	$serviceId = $wc_item['bookly']['items'][0]['service_id'];
	$serviceInfo = $wpdb->get_results('SELECT * FROM wp_bookly_services WHERE id="'.$serviceId.'";');

	// appointment time and date
	$unixTime = strtotime($wc_item['bookly']['items'][0]['slots'][0][2]);
	$date = date('M j, Y', $unixTime);
	$UTCTime = date('g:i a', $unixTime);

	// convert to users timezone
	$startTime = date_timezone_set(new DateTime($UTCTime), timezone_open($wc_item['bookly']['time_zone']));

	// time and date info
	$duration = floor($serviceInfo[0]->duration/60);
	$endTime = new DateTime(date_format($startTime, 'g:i a'));
	$endTime->add(new DateInterval('PT' . $duration . 'M'));
	$timeOfDay = date_format($endTime, 'a');
}
?>

<?php
	do_action( 'woocommerce_review_order_before_cart_contents' );

	foreach ( WC()->cart->get_cart() as $cart_item_key => $cart_item ) {
		$_product = apply_filters( 'woocommerce_cart_item_product', $cart_item['data'], $cart_item, $cart_item_key );

		if ( $_product && $_product->exists() && $cart_item['quantity'] > 0 && apply_filters( 'woocommerce_checkout_cart_item_visible', true, $cart_item, $cart_item_key ) ) {
			?>
			
			<div class="consultation-card row mb-borders m-0 mb-4">
				<div class="col mb-borders--right bg-white p-3">
					<div class="consultation-card__detail mb-2"><?= $serviceInfo[0]->title;?></div>
					<div class="consultation-card__pro"><?= $staffName; ?></div>
					<div class="consultation-card__detail"><?= $staffTrade; ?></div>
				</div>
				<div class="col mb-borders--right p-3">
					<div><?= $date; ?></div>
					<div><?= date_format($startTime, 'g:i').'-'.date_format($endTime, 'g:i').$timeOfDay; ?></div>
					<div><a class="text-button text-button--green" href="/pro/<?= str_replace(' ', '-', strtolower($staffInfo[0]->full_name)); ?>?service=<?= $serviceId; ?>">Change Time</a></div>
				</div>
				<div class="col p-3 d-flex justify-content-end">
					<div><?php echo apply_filters( 'woocommerce_cart_item_subtotal', WC()->cart->get_product_subtotal( $_product, $cart_item['quantity'] ), $cart_item, $cart_item_key ); // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped ?></div>
				</div>
			</div>
			<?php
		}
	}

	do_action( 'woocommerce_review_order_after_cart_contents' );
?>

<hr/>

<div class="row m-0 pt-1">
	<div class="col p-0">
		<div class="woocommerce-form-coupon" method="post">
			<div>
				<input type="text" name="coupon_code" class="coupon-form-input input-text" placeholder="<?php esc_attr_e( 'Gift or Promo Code', 'woocommerce' ); ?>" id="coupon_code" value="" />
				<a class="coupon-form-submit text-button text-button--green" name="apply_coupon" value="<?php esc_attr_e( 'Apply', 'woocommerce' ); ?>"><?php esc_html_e( 'Apply coupon', 'woocommerce' ); ?></a>
			</div>
		</div>
	</div>
	<div class="col p-0 d-flex justify-content-end align-items-center">
		<span>Total&nbsp;&nbsp;</span><?= wc_cart_totals_order_total_html(); ?>
	</div>
</div>
