<?php
/**
 * Past Consultations
 *
 * Shows orders on the account page.
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/myaccount/orders.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce\Templates
 * @version 3.7.0
 */

defined( 'ABSPATH' ) || exit;

do_action( 'woocommerce_before_account_orders', $has_orders ); ?>

<div class="pt-md-5">
	<h2 id="order_review_heading"><?php esc_html_e( 'Your Upcoming Consultations', 'woocommerce' ); ?></h2>
	<hr class="mb-hr mb-hr--olive" />
</div>

<h1>Goodbye</h1>

<?php if ( $has_orders ): ?>

	<div class="consultations mt-md-4">
	<?php foreach ( $customer_orders->orders as $customer_order ) {
		$order = wc_get_order( $customer_order ); // phpcs:ignore WordPress.WP.GlobalVariablesOverride.Prohibited

		global $wpdb;

		$orderDate = $order->get_date_created()->date('M j, Y');
		echo $order->ID;

		foreach ($order->get_items() as $item_id => $item) {
			$data =  $item->get_meta("bookly");

			if (isset($data['items'])) {
				// service details
				$serviceId = $data['items'][0]['service_id'];
				$serviceInfo = $wpdb->get_results('SELECT * FROM wp_bookly_services WHERE id="'.$serviceId.'";');


				// staff details
				$staffId = $data['items'][0]['staff_ids'][0];
				$staffInfo = $wpdb->get_results('SELECT * FROM wp_bookly_staff WHERE id="'.$staffId.'";');
				$staffName = $staffInfo[0]->full_name;
				$staffSlug = str_replace(" ", "-", strtolower($staffName));
				$staffTrade = get_post_meta(get_page_by_path($staffSlug, OBJECT, 'pro')->ID, 'trade', true);

				// appointment time and date
				$unixTime = strtotime($data['items'][0]['slots'][0][2]);
				$date = date('M j, Y', $unixTime);
				$UTCTime = date('g:i a', $unixTime);

				$apptIsWhen = $date > date("M j, Y") ? "upcoming" : "past"; 
				echo $apptIsWhen;

				// convert to users timezone
				$startTime = date_timezone_set(new DateTime($UTCTime), timezone_open($data['time_zone']));

				// time and date info
				$duration = floor($serviceInfo[0]->duration/60);
				$endTime = new DateTime(date_format($startTime, 'g:i a'));
				$endTime->add(new DateInterval('PT' . $duration . 'M'));
				$timeOfDay = date_format($endTime, 'a');

				$price = $item->get_total();

			}
		} ?>

		<?php if (isset($data['items']) && !empty($serviceInfo)): ?>
			<div class="consultation-card consultation-card--<?= $apptIsWhen; ?> row mb-borders m-0 mb-4">
				<div class="col mb-borders--right consultation-card__yellow-bg p-3">
					<div class="consultation-card__detail mb-2"><?= $serviceInfo[0]->title;?></div>
					<div class="consultation-card__pro"><?= $staffName; ?></div>
					<div class="consultation-card__detail"><?= $staffTrade; ?></div>
				</div>
				<div class="col mb-borders--right p-3">
					<div><?= $date; ?></div>
					<div><?= date_format($startTime, 'g:i').'-'.date_format($endTime, 'g:i').$timeOfDay; ?></div>
					<div><a class="text-button text-button--green" href="../view-order/<?= $order->ID;?>">View Details</a></div>
				</div>
				<div class="col p-3 d-flex justify-content-end">
					<div><?= wc_price($price); ?></div>
				</div>
			</div>
		<?php endif; ?>
	<?php } ?>

	<?php do_action( 'woocommerce_before_account_orders_pagination' ); ?>

	<br/>
	<br/>

	<table class="woocommerce-orders-table woocommerce-MyAccount-orders shop_table shop_table_responsive my_account_orders account-orders-table">
		<thead>
			<tr>
				<?php foreach ( wc_get_account_orders_columns() as $column_id => $column_name ) : ?>
					<th class="woocommerce-orders-table__header woocommerce-orders-table__header-<?php echo esc_attr( $column_id ); ?>"><span class="nobr"><?php echo esc_html( $column_name ); ?></span></th>
				<?php endforeach; ?>
			</tr>
		</thead>

		<tbody>
			<?php
			foreach ( $customer_orders->orders as $customer_order ) {
				$order      = wc_get_order( $customer_order ); // phpcs:ignore WordPress.WP.GlobalVariablesOverride.Prohibited
				$item_count = $order->get_item_count() - $order->get_item_count_refunded();
				?>
				<tr class="woocommerce-orders-table__row woocommerce-orders-table__row--status-<?php echo esc_attr( $order->get_status() ); ?> order">
					<?php foreach ( wc_get_account_orders_columns() as $column_id => $column_name ) : ?>
						<td class="woocommerce-orders-table__cell woocommerce-orders-table__cell-<?php echo esc_attr( $column_id ); ?>" data-title="<?php echo esc_attr( $column_name ); ?>">
							<?php if ( has_action( 'woocommerce_my_account_my_orders_column_' . $column_id ) ) : ?>
								<?php do_action( 'woocommerce_my_account_my_orders_column_' . $column_id, $order ); ?>

							<?php elseif ( 'order-number' === $column_id ) : ?>
								<a href="<?php echo esc_url( $order->get_view_order_url() ); ?>">
									<?php echo esc_html( _x( '#', 'hash before order number', 'woocommerce' ) . $order->get_order_number() ); ?>
								</a>

							<?php elseif ( 'order-date' === $column_id ) : ?>
								<time datetime="<?php echo esc_attr( $order->get_date_created()->date( 'c' ) ); ?>"><?php echo esc_html( wc_format_datetime( $order->get_date_created() ) ); ?></time>

							<?php elseif ( 'order-status' === $column_id ) : ?>
								<?php echo esc_html( wc_get_order_status_name( $order->get_status() ) ); ?>

							<?php elseif ( 'order-total' === $column_id ) : ?>
								<?php
								/* translators: 1: formatted order total 2: total order items */
								echo wp_kses_post( sprintf( _n( '%1$s for %2$s item', '%1$s for %2$s items', $item_count, 'woocommerce' ), $order->get_formatted_order_total(), $item_count ) );
								?>

							<?php elseif ( 'order-actions' === $column_id ) : ?>
								<?php
								$actions = wc_get_account_orders_actions( $order );

								if ( ! empty( $actions ) ) {
									foreach ( $actions as $key => $action ) { // phpcs:ignore WordPress.WP.GlobalVariablesOverride.Prohibited
										echo '<a href="' . esc_url( $action['url'] ) . '" class="woocommerce-button button ' . sanitize_html_class( $key ) . '">' . esc_html( $action['name'] ) . '</a>';
									}
								}
								?>
							<?php endif; ?>
						</td>
					<?php endforeach; ?>
				</tr>
				<?php
			}
			?>
		</tbody>
	</table>

	<?php if ( 1 < $customer_orders->max_num_pages ) : ?>
		<div class="woocommerce-pagination woocommerce-pagination--without-numbers woocommerce-Pagination">
			<?php if ( 1 !== $current_page ) : ?>
				<a class="woocommerce-button woocommerce-button--previous woocommerce-Button woocommerce-Button--previous button" href="<?php echo esc_url( wc_get_endpoint_url( 'orders', $current_page - 1 ) ); ?>"><?php esc_html_e( 'Previous', 'woocommerce' ); ?></a>
			<?php endif; ?>

			<?php if ( intval( $customer_orders->max_num_pages ) !== $current_page ) : ?>
				<a class="woocommerce-button woocommerce-button--next woocommerce-Button woocommerce-Button--next button" href="<?php echo esc_url( wc_get_endpoint_url( 'orders', $current_page + 1 ) ); ?>"><?php esc_html_e( 'Next', 'woocommerce' ); ?></a>
			<?php endif; ?>
		</div>
	<?php endif; ?>
	</div>

<?php else : ?>
	<div class="woocommerce-message woocommerce-message--info woocommerce-Message woocommerce-Message--info woocommerce-info">
		<a class="woocommerce-Button button" href="<?php echo esc_url( apply_filters( 'woocommerce_return_to_shop_redirect', wc_get_page_permalink( 'shop' ) ) ); ?>"><?php esc_html_e( 'Browse products', 'woocommerce' ); ?></a>
		<?php esc_html_e( 'No order has been made yet.', 'woocommerce' ); ?>
	</div>
<?php endif; ?>

<?php do_action( 'woocommerce_after_account_orders', $has_orders ); ?>
