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
$staff = Bookly\Lib\Entities\Staff::query()->where( 'wp_user_id', wp_get_current_user()->ID )->findOne();
$staffAppointments = $wpdb->get_results("SELECT * FROM wp_bookly_appointments WHERE staff_id='$staff->id' ORDER BY start_date ASC;");

?>
<div class="pt-md-5">
	<h2 id="order_review_heading"><?php esc_html_e( 'Your Upcoming Consultations', 'woocommerce' ); ?></h2>
	<hr class="mb-hr mb-hr--olive" />
</div>

<?php // loop through staff orders ?>
<?php $hasConsultations = false; ?>

<div class="consultations mt-md-4">
<?php foreach ( $staffAppointments as $booking ) {
	$order = wc_get_order($booking->order_id);

	if (!empty($order)) {
		$customerFName = $order->get_data()["billing"]["first_name"];
		$customerLName = $order->get_data()["billing"]["last_name"];

		foreach ($order->get_items() as $item_id => $item) {
			$is_consultation = strpos($item->get_name(), 'Consultation') != false;

			if ($is_consultation) {
				$data =  $item->get_meta("bookly");

				if (isset($data['items'])) {
					// service details
					$serviceId = $data['items'][0]['service_id'];
					$serviceInfo = $wpdb->get_results('SELECT * FROM wp_bookly_services WHERE id="'.$serviceId.'";');

					// staff details
					$staffId = $data['items'][0]['staff_ids'][0];
					$staffInfo = $wpdb->get_results('SELECT * FROM wp_bookly_staff WHERE id="'.$staffId.'";');

					// appointment time and date
					$unixTime = strtotime($data['items'][0]['slots'][0][2]);
					$date = date('M j, Y', $unixTime);
					$UTCTime = date('M j, Y g:i a', $unixTime);
					$apptTime = date('Y-m-d H:i:s', $unixTime);

					$startTime = new DateTime($UTCTime); // get start time
					$startTime->setTimezone(new DateTimeZone($staffInfo[0]->time_zone));

					// bookly appointment
					$appointment = $wpdb->get_results('SELECT * FROM wp_bookly_appointments WHERE start_date="'.$apptTime.'";');
					$appointmentId = $appointment[0]->id;
					$customerAppointment = $wpdb->get_results('SELECT * FROM wp_bookly_customer_appointments WHERE appointment_id="'.$appointmentId.'";');
					$status = $customerAppointment[0]->status;

					// convert to pros timezone
					$dateTime = date_format($startTime, 'M j, Y g:i a'); // appt date & time

					// time and date info
					$booklyDuration = floor($serviceInfo[0]->duration/60);
					$duration = $booklyDuration > 0 ? ($booklyDuration - 5) : $booklyDuration;
					$endTime = new DateTime(date_format($startTime, 'g:i a'));
					$endTime->add(new DateInterval('PT' . $duration . 'M'));
					$timeOfDay = date_format($endTime, 'a');

					$price = $item->get_total();

					// get current date and time in users timezone
					$currentDateTime = date_timezone_set(new DateTime('now'), timezone_open($staffInfo[0]->time_zone));
					$currentDateTime = date_format($currentDateTime, 'M j, Y g:i a');

					if (new DateTime($dateTime) <= new DateTime($currentDateTime)) {
						$apptIsWhen = "past";
					} else {
						$apptIsWhen = "future";
					}

					// Zoom
					if ($appointment) {
						$zoomId = $appointment[0]->online_meeting_id;
						$appointmentData = explode(",", $appointment[0]->online_meeting_data);
						$object = json_decode (json_encode ($appointmentData), FALSE);

						// Join Url
						$joinArray = explode('":"', str_replace("\/", "/", $object[12]));
						$joinUrl = str_replace('"', '', $joinArray[1]);

						// Password
						$passwordArray = explode(":", $object[13]);
						if (strpos($passwordArray[0], 'password')) {
							$password = str_replace('"', '', $passwordArray[1]);
						}
					}
				}
			}
		}
	} ?>

	<?php if (!empty($order) && $appointment && $status == 'approved'): ?>
		<?php if (isset($data['items']) && !empty($serviceInfo) && $apptIsWhen == "future"): ?>
			<div class="consultation-card consultation-card--<?= $apptIsWhen; ?> row mb-borders m-0 mb-4">
            <div class="col-12 col-lg consultation-card__yellow-bg p-3">
					<div class="consultation-card__detail mb-2"><?= $serviceInfo[0]->title;?></div>
					<div class="consultation-card__pro consultation-card__pro--customer"><?= "$customerFName $customerLName"; ?></div>
				</div>
                <div class="col-12 col-lg p-3">
					<div><?= $date; ?></div>
					<div><?= date_format($startTime, 'g:i').'-'.date_format($endTime, 'g:i').$timeOfDay; ?></div>
					<?php if(!empty($zoomId)): ?>
						<a class="consultation-card__zoom-link badge badge-primary" href="<?= $joinUrl; ?>" target="_blank"><i class="fas fa-video fa-fw"></i> Zoom <i class="fas fa-external-link-alt fa-fw"></i></a>
						<?php if ($password): ?><span class="consultation-card__zoom-passcode" class="my-2">Passcode: <?= $password; ?></span><?php endif; ?>
					<?php endif; ?>
					<div><a class="text-button text-button--green" href="../booking-details?id=<?= $order->get_id();?>&pid=<?= $order->get_id();?>">View Details</a></div>
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
	<p>You have no upcoming consultations at this time.</p>
<?php endif; ?>