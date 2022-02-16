<?php
/**
 * Pro Past Consultations
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

global $wpdb;

// get appointments by staff id
$staffAppointments = $wpdb->get_results('SELECT * FROM wp_bookly_appointments WHERE staff_id="5";');

?>
<div class="pt-md-5">
	<h2 id="order_review_heading"><?php esc_html_e( 'Your Past Consultations', 'woocommerce' ); ?></h2>
	<hr class="mb-hr mb-hr--olive" />
</div>

<?php // loop through staff orders ?>
<?php $hasConsultations = false; ?>

<div class="consultations mt-md-4">
<?php foreach ( $staffAppointments as $booking ) {
	$createdDate = $booking->created_at;

	// get wp_posts from appointments by created date
	$wpPost = $wpdb->get_results("SELECT * FROM wp_posts WHERE post_modified = '$createdDate'");

	//$order = wc_get_order( $customer_order ); // phpcs:ignore WordPress.WP.GlobalVariablesOverride.Prohibited
	$order = wc_get_order($wpPost[0]->ID);
	$customerFName = $order->get_data()["billing"]["first_name"];
	$customerLName = $order->get_data()["billing"]["last_name"];

	foreach ($order->get_items() as $item_id => $item) {
		$data =  $item->get_meta("bookly");

		if (isset($data['items'])) {
			// service details
			$serviceId = $data['items'][0]['service_id'];
			$serviceInfo = $wpdb->get_results('SELECT * FROM wp_bookly_services WHERE id="'.$serviceId.'";');

			// appointment time and date
			$unixTime = strtotime($data['items'][0]['slots'][0][2]);

			$date = date('M j, Y', $unixTime);
			$UTCTime = date('M j, Y g:i a', $unixTime);

			// convert to users timezone
			$startTime = date_timezone_set(new DateTime($UTCTime), timezone_open($data['time_zone']));
			$dateTime = date_format($startTime, 'M j, Y g:i a'); // appt date & time

			// time and date info
			$duration = floor($serviceInfo[0]->duration/60);
			$endTime = new DateTime(date_format($startTime, 'g:i a'));
			$endTime->add(new DateInterval('PT' . $duration . 'M'));
			$timeOfDay = date_format($endTime, 'a');

			$price = $item->get_total();

			// get current date and time in users timezone
			$currentDateTime = date_timezone_set(new DateTime('now'), timezone_open($data['time_zone']));
			$currentDateTime = date_format($currentDateTime, 'M j, Y g:i a');
			$apptIsWhen = $dateTime < $currentDateTime ? "upcoming" : "past";
		}
	} ?>

	<?php if (isset($data['items']) && !empty($serviceInfo) && $apptIsWhen == "past"): ?>
		<div class="consultation-card consultation-card--<?= $apptIsWhen; ?> row mb-borders m-0 mb-4">
			<div class="col mb-borders--right consultation-card__yellow-bg p-3">
				<div class="consultation-card__detail mb-2"><?= $serviceInfo[0]->title.' with' ?></div>
				<div class="consultation-card__pro consultation-card__pro--customer"><?= "$customerFName $customerLName"; ?></div>
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
		<?php $hasConsultations = true; ?>
	<?php endif; ?>
<?php } ?>

<?php if(!$hasConsultations):?>
	<p>You have no upcoming consultations at this time.</p>
<?php endif; ?>