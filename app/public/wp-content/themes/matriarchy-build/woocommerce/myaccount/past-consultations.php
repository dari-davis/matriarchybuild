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
	<h2 id="order_review_heading"><?php esc_html_e( 'Your Past Consultations', 'woocommerce' ); ?></h2>
	<hr class="mb-hr mb-hr--olive" />
</div>

<?php if ( $has_orders ): ?>
	<?php $hasConsultations = false; ?>

	<div class="consultations mt-md-4">
	<?php foreach ( $customer_orders->orders as $customer_order ) {
		$order = wc_get_order( $customer_order ); // phpcs:ignore WordPress.WP.GlobalVariablesOverride.Prohibited

		global $wpdb;

		if ($order->get_status() != 'failed') {
			foreach ($order->get_items() as $item_id => $item) {
				$is_consultation = strpos($item->get_name(), 'Consultation') != false;

				if ($is_consultation) {
					$data =  $item->get_meta("bookly");
					$timezone = $data['time_zone'];

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
						$UTCTime = date('M j, Y g:i a', $unixTime);
						$apptTime = date('Y-m-d H:i:s', $unixTime);

						// convert to users timezone
						$startTime = new DateTime($UTCTime);
						$startTime->setTimezone(new DateTimeZone($timezone));
						$dateTime = date_format($startTime, 'M j, Y g:i a'); // appt date & time

						// time and date info
						$booklyDuration = floor($serviceInfo[0]->duration/60);
						$duration = $booklyDuration > 0 ? ($booklyDuration - 5) : $booklyDuration;
						$endTime = new DateTime(date_format($startTime, 'g:i a'));
						$endTime->add(new DateInterval('PT' . $duration . 'M'));
						$timeOfDay = date_format($endTime, 'a');

						// gets session end date and time
						$sessionEndDateAndTime = new DateTime(date_format($startTime, 'M j, Y g:i a')); // start date and time
						$sessionEndDateAndTime->add(new DateInterval('PT' . $duration . 'M'));

						$fmtEndTime = date_format($sessionEndDateAndTime, 'M j, Y g:i a');

						$price = $item->get_total();

						// get current date and time in users timezone
						$currentDateTime = date_timezone_set(new DateTime('now'), timezone_open($data['time_zone']));
						$currentDateTime = date_format($currentDateTime, 'M j, Y g:i a');

						// if the session end time is in the past
						if (new DateTime($fmtEndTime) <= new DateTime($currentDateTime)) {
							$apptIsWhen = "past";
						} else {
							$apptIsWhen = "future";
						}
					}
				}
			}
		}
		?>

		<?php $sixMonthsAgo = date('Y-m-d', strtotime('-6 months', strtotime($currentDateTime))); ?>
		<?php $apptDate = date_format($startTime, 'Y-m-d'); ?>

		<?php if ($order->get_status() != 'failed' && ($apptDate > $sixMonthsAgo)): ?>
			<?php if (isset($data['items']) && !empty($serviceInfo) && $apptIsWhen == 'past'): ?>
				<div class="consultation-card consultation-card--<?= $apptIsWhen; ?> row mb-borders m-0 mb-4">
					<div class="col-12 col-lg consultation-card__yellow-bg p-3">
						<div class="consultation-card__detail mb-2"><?= $serviceInfo[0]->title;?></div>
						<div class="consultation-card__pro"><?= $staffName; ?></div>
						<div class="consultation-card__detail"><?= $staffTrade; ?></div>
					</div>
					<div class="col-12 col-lg p-3">
						<div><?= $date; ?></div>
						<div><?= date_format($startTime, 'g:i').'-'.date_format($endTime, 'g:i').$timeOfDay; ?></div>
						<div><a class="text-button text-button--green" href="../view-order/<?= $order->get_id();?>">View Details</a></div>
					</div>
					<div class="col-12 col-lg p-3 d-flex justify-content-lg-end">
						<div><?= wc_price($price); ?></div>
					</div>
				</div>
				<?php $hasConsultations = true; ?>
			<?php endif; ?>
		<?php endif; ?>
	<?php } ?>

	<?php if(!$hasConsultations):?>
		<p>You have no past consultations at this time.</p>
	<?php endif; ?>

	</div>

<?php else : ?>
	<p>You have no past consultations at this time.</p>
<?php endif; ?>

<?php do_action( 'woocommerce_after_account_orders', $has_orders ); ?>
