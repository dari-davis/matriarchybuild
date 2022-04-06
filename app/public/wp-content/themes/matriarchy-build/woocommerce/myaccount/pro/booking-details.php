<?php
/**
 * Booking Details
 *
 */

defined( 'ABSPATH' ) || exit;

//$notes = $order->get_customer_order_notes();
$order_id = $_GET['id'];
global $wpdb;
global $post;
$order = wc_get_order($order_id);
$images = get_attached_media('', $order->get_id());
?>

<?php if (!empty($order)): ?>
    <?php $customerFName = $order->get_data()["billing"]["first_name"];
	      $customerLName = $order->get_data()["billing"]["last_name"];
    ?>

    <?php foreach ($order->get_items() as $item_id => $item) {
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
            $UTCTime = date('M j, Y g:i a', $unixTime);
            $apptTime = date('Y-m-d H:i:s', $unixTime);

            $startTime = new DateTime($UTCTime); // get start time

            // bookly appointment
            $appointment = $wpdb->get_results('SELECT * FROM wp_bookly_appointments WHERE start_date="'.$apptTime.'";');
            $appointmentId = $appointment[0]->id;

            // get timezones
            $userTimezone = $wpdb->get_results("SELECT time_zone FROM wp_bookly_customer_appointments WHERE appointment_id='$appointmentId'");
            $proTimezone = $staffInfo[0]->time_zone;

            // users timezone
            date_default_timezone_set($userTimezone[0]->time_zone);
            $usersTime = new DateTime($UTCTime);

            // convert to pros timezone
            $prosTime = date_timezone_set($usersTime, timezone_open($proTimezone));
            $dateTime = date_format($prosTime, 'M j, Y g:i a'); // appt date & time

            // time and date info
            $booklyDuration = floor($serviceInfo[0]->duration/60);
            $duration = $booklyDuration > 0 ? ($booklyDuration - 5) : $booklyDuration;
            $endTime = new DateTime(date_format($prosTime, 'g:i a'));
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
            $appointment = $wpdb->get_results('SELECT * FROM wp_bookly_appointments WHERE start_date="'.$apptTime.'";');
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
    } ?>
<?php endif; ?>

<?php if (!empty($order)): ?>
    <?php if (isset($data['items']) && !empty($serviceInfo)): ?>
        <div class="consultation-card consultation-card--<?= $apptIsWhen; ?> row mb-borders m-0 mb-4">
            <div class="col-6 col-lg consultation-card__yellow-bg p-3">
                <div class="consultation-card__detail mb-2"><?= $serviceInfo[0]->title;?></div>
                <div class="consultation-card__pro consultation-card__pro--customer"><?= "$customerFName $customerLName"; ?></div>
            </div>
            <div class="col-6 col-lg p-3">
                <div><?= $date; ?></div>
                <div><?= date_format($prosTime, 'g:i').'-'.date_format($endTime, 'g:i').$timeOfDay; ?></div>
                <?php if(!empty($zoomId)): ?>
                    <a class="consultation-card__zoom-link badge badge-primary" href="<?= $joinUrl; ?>" target="_blank"><i class="fas fa-video fa-fw"></i> Zoom <i class="fas fa-external-link-alt fa-fw"></i></a>
                    <?php if ($password): ?><span class="consultation-card__zoom-passcode" class="my-2">Passcode: <?= $password; ?></span><?php endif; ?>
                <?php endif; ?>
            </div>
            <div class="col-12 col-lg p-3 d-flex justify-content-end">
                <div><?= wc_price($price); ?></div>
            </div>
        </div>
        <?php $hasConsultations = true; ?>
    <?php endif; ?>

    <?php if (!empty($order->get_customer_note())): ?>
        <div class="row no-gutters m-0">
            <div class="col-md-8 p-0">
                <div class="pt-md-5">
                    <h2><?php esc_html_e( 'Note From The Client', 'woocommerce' ); ?></h2>
                    <hr class="mb-hr mb-hr--olive" />
                </div>

                <p><?= $order->get_customer_note(); ?></p>
            </div>
        </div>
    <?php endif; ?>

    <div class="row no-gutters m-0">
        <div class="col-md-8 p-0">
            <div class="pt-md-5">
                <h2><?php esc_html_e( 'Project Details', 'woocommerce' ); ?></h2>
                <hr class="mb-hr mb-hr--olive" />
            </div>
            <?php if ($apptIsWhen == "future" || get_post_meta($order_id, 'answer1', true)): ?>
                <p>Get acquainted with the project details by reviewing the images and questionnaire answers below.</p>
            <?php else: ?>
                <p>No questionnaire was submitted for this consultation.</p>
            <?php endif; ?>
        </div>

        <?php if ($images): ?>
            <div class="questionnaire questionnaire--photos p-4 mb-4 d-flex">
                <?php foreach(array_slice($images, 0, 5) as $image): ?>
                    <div class="questionnaire__image me-3">
                        <img src="<?= wp_get_attachment_url($image->ID); ?>"/>
                    </div>
                <?php endforeach; ?>
            </div>
        <?php endif; ?>
        
        <?php if( get_post_meta($order_id, 'answer1', true)): ?>
            <?= get_template_part('partials/questionnaire-answers', null, array('orderId' => $order_id)); ?>
        <?php endif; ?>
    </div>
<?php endif; ?>
