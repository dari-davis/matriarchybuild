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

global $wpdb; ?>

<?php foreach ( WC()->cart->get_cart() as $cart_item_key => $cart_item ): ?>
	<?php
	$_product = wc_get_product( $cart_item['product_id'] );
	$product_id = apply_filters( 'woocommerce_cart_item_product_id', $cart_item['product_id'], $cart_item, $cart_item_key );
	$is_consultation = $_product->is_type('simple') && strpos($_product->get_name(), 'Consultation') != false;
	?>

	<?php if ($is_consultation): ?>
		<?php
		$timezone = $cart_item['bookly']['time_zone'];

		// staff details
		$staffId = $cart_item['bookly']['items'][0]['staff_ids'][0];
		$staffInfo = $wpdb->get_results('SELECT * FROM wp_bookly_staff WHERE id="'.$staffId.'";');
		$staffName = $staffInfo[0]->full_name;
		$staffSlug = str_replace(" ", "-", strtolower($staffName));
		$staffTrade = get_post_meta(get_page_by_path($staffSlug, OBJECT, 'pro')->ID, 'trade', true);

		// service details
		$serviceId = $cart_item['bookly']['items'][0]['service_id'];
		$serviceInfo = $wpdb->get_results('SELECT * FROM wp_bookly_services WHERE id="'.$serviceId.'";');

		// appointment time and date
		//var_dump($cart_item['bookly']['items'][0]);
		$unixTime = strtotime($cart_item['bookly']['items'][0]['slots'][0][2]);
		//var_dump($cart_item['bookly']['items'][0]['slots'][0][2]);
		$date = date('M j, Y', $unixTime);
		$UTCTime = date('g:i a', $unixTime);

		// convert to users timezone
		$startTime = new DateTime($UTCTime);
		$startTime->setTimezone(new DateTimeZone($timezone));

		// time and date info
		$booklyDuration = floor($serviceInfo[0]->duration/60);
		$duration = $booklyDuration > 0 ? ($booklyDuration - 5) : $booklyDuration;
		$endTime = new DateTime(date_format($startTime, 'g:i a'));
		$endTime->add(new DateInterval('PT' . $duration . 'M'));
		$timeOfDay = date_format($endTime, 'a');

		// price
		$price = $wpdb->get_results('SELECT price FROM wp_bookly_staff_services WHERE staff_id="'.$staffId.'";');
		?>

		<div class="consultation-card row mb-borders m-0 mb-4">
			<div class="col-12 col-lg bg-white p-3">
				<div class="consultation-card__detail mb-2"><?= $serviceInfo[0]->title;?></div>
				<div class="consultation-card__pro"><?= $staffName; ?></div>
				<div class="consultation-card__detail"><?= $staffTrade; ?></div>
			</div>
			<div class="col-12 col-lg p-3">
				<div><?= $date; ?></div>
				<div><?= date_format($startTime, 'g:i').'-'.date_format($endTime, 'g:i').$timeOfDay; ?></div>

				<div class="product-remove">
					<?php
						echo apply_filters( // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped
							'woocommerce_cart_item_remove_link',
							sprintf(
								'<a href="%s" class="text-button text-button--green" aria-label="%s" data-product_id="%s" data-product_sku="%s">Remove</a>',
								esc_url( wc_get_cart_remove_url( $cart_item_key ) ),
								esc_html__( 'Remove this item', 'woocommerce' ),
								esc_attr( $product_id ),
								esc_attr( $_product->get_sku() )
							),
							$cart_item_key
						);
					?>
				</div>
			</div>
			<div class="col-12 col-lg p-3 d-flex justify-content-lg-end">
				<div>$<?= $price[0]->price; ?></div>
			</div>
		</div>
	<?php endif; ?>
<?php endforeach; ?>

<?php
	do_action( 'woocommerce_review_order_before_cart_contents' );

	foreach ( WC()->cart->get_cart() as $cart_item_key => $cart_item ) {	
		$_product = apply_filters( 'woocommerce_cart_item_product', $cart_item['data'], $cart_item, $cart_item_key );
		$product_id = apply_filters( 'woocommerce_cart_item_product_id', $cart_item['product_id'], $cart_item, $cart_item_key );
		$is_consultation = $_product->is_type('simple') && strpos($_product->get_name(), 'Consultation') != false;

		if ( $_product && $_product->exists() && $cart_item['quantity'] > 0 && apply_filters( 'woocommerce_checkout_cart_item_visible', true, $cart_item, $cart_item_key ) ) { ?>

			<?php if ($is_consultation): ?>
				
			<?php else: ?>
				<div class="order-item row mb-borders m-0 mb-4">
					<div class="col-12 col-lg p-3">
						<div class="order-item__image"><?= $_product->get_image(); ?></div>
					</div>
					<div class="col-12 col-lg p-3">
						<div class="order-item__name product-name mb-3" data-title="<?php esc_attr_e( 'Product', 'woocommerce' ); ?>">
							<?php
							$product_permalink = apply_filters( 'woocommerce_cart_item_permalink', $_product->is_visible() ? $_product->get_permalink( $cart_item ) : '', $cart_item, $cart_item_key );
							if ( ! $product_permalink ) {
								echo wp_kses_post( apply_filters( 'woocommerce_cart_item_name', $_product->get_name(), $cart_item, $cart_item_key ) . '&nbsp;' );
							} else {
								echo wp_kses_post( apply_filters( 'woocommerce_cart_item_name', sprintf( '<a href="%s">%s</a>', esc_url( $product_permalink ), $_product->get_name() ), $cart_item, $cart_item_key ) );
							}

							do_action( 'woocommerce_after_cart_item_name', $cart_item, $cart_item_key ); ?>
						</div>

						<div class="order-item__details">
							<?= wc_get_formatted_cart_item_data($cart_item); // PHPCS: XSS ok. ?>
						</div>

						<div class="product-price mb-3" data-title="<?php esc_attr_e( 'Price', 'woocommerce' ); ?>">
							<?php
								echo apply_filters( 'woocommerce_cart_item_price', WC()->cart->get_product_price( $_product ), $cart_item, $cart_item_key ); // PHPCS: XSS ok.
							?>
						</div>

						<div class="product-remove">
							<?php
								echo apply_filters( // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped
									'woocommerce_cart_item_remove_link',
									sprintf(
										'<a href="%s" class="text-button text-button--green" aria-label="%s" data-product_id="%s" data-product_sku="%s">Remove</a>',
										esc_url( wc_get_cart_remove_url( $cart_item_key ) ),
										esc_html__( 'Remove this item', 'woocommerce' ),
										esc_attr( $product_id ),
										esc_attr( $_product->get_sku() )
									),
									$cart_item_key
								);
							?>
						</div>
					</div>

					<div class="col-12 col-lg p-3 d-flex justify-content-lg-end">
						<div class="product-subtotal" data-title="<?php esc_attr_e( 'Subtotal', 'woocommerce' ); ?>">
							<?php echo apply_filters( 'woocommerce_cart_item_subtotal', WC()->cart->get_product_subtotal( $_product, $cart_item['quantity'] ), $cart_item, $cart_item_key ); // PHPCS: XSS ok. ?>
						</div>
					</div>
				</div>
			<?php endif; ?>
			<?php
		}
	}

	do_action( 'woocommerce_review_order_after_cart_contents' );
?>

<hr/>

<div class="row m-0 pt-1">
	<div class="col-md p-0 d-flex mb-4 mb-md-0">
		<div class="woocommerce-form-coupon me-3" method="post">
			<div class="d-flex flex-column flex-lg-row">
				<input type="text" name="coupon_code" class="coupon-form-input input-text mb-2 mb-lg-0" placeholder="<?php esc_attr_e( 'Coupon Code', 'woocommerce' ); ?>" id="coupon_code" value="" />
				<a class="coupon-form-submit button" name="apply_coupon" value="<?php esc_attr_e( 'Apply', 'woocommerce' ); ?>"><?php esc_html_e( 'Apply Coupon', 'woocommerce' ); ?></a>
			</div>
		</div>

		<?php do_action( 'woocommerce_review_order_before_submit' ); ?>
	</div>
	<div class="col-md p-0 d-flex justify-content-md-end align-items-start total">
		<div class="row gx-0">
			<?php if (!empty(WC()->cart->applied_coupons)): ?>
				<div class="col-12 d-flex justify-content-md-end align-items-center">
					<?php foreach ( WC()->cart->get_coupons() as $code => $coupon ) : ?>
						<div class="cart-discount coupon-<?php echo esc_attr( sanitize_title( $code ) ); ?>">
							<p class="mb-1 text-md-end"><?php wc_cart_totals_coupon_label( $coupon ); ?></p>
							<p class="text-md-end"><?php wc_cart_totals_coupon_html( $coupon ); ?></p>
						</div>
					<?php endforeach; ?>
				</div>
			<?php endif; ?>
			<div class="cart-discount col-12 d-flex flex-column justify-content-md-end align-items-md-end">
				<?php do_action( 'woocommerce_review_order_before_order_total' ); ?>
			</div>
			<div class="col-12 d-flex justify-content-md-end align-items-center" data-order-total>
				<span>Total&nbsp;&nbsp;</span><?= wc_cart_totals_order_total_html(); ?>
			</div>
	</div>
</div>
