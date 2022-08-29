<?php
/**
 * Customer processing order email
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/emails/customer-processing-order.php.
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

if ( ! defined( 'ABSPATH' ) ) {
	exit;
}

/*
 * @hooked WC_Emails::email_header() Output the email header
 */
do_action( 'woocommerce_email_header', $email_heading, $email ); ?>

<style>
    .order_item + .order_item td {
        padding-bottom: 24px !important;
        border-top: 1px solid #e5e5e5 !important;
    }

    .wc-item-meta {
        margin-top: 0 !important;
    }

    .wc-item-meta-label {
        font-weight: normal !important;
    }
</style>

<?php /* translators: %s: Customer first name */ ?>
<p><?php printf( esc_html__( 'Hi %s,', 'woocommerce' ), esc_html( $order->get_billing_first_name() ) ); ?></p>
<?php /* translators: %s: Order number */ ?>
<p>You're one step closer to tackling your next project.</p>

<?php

/*
 * @hooked WC_Emails::order_details() Shows the order details table.
 * @hooked WC_Structured_Data::generate_order_data() Generates structured data.
 * @hooked WC_Structured_Data::output_structured_data() Outputs structured data.
 * @since 2.5.0
 */
do_action( 'woocommerce_email_order_details', $order, $sent_to_admin, $plain_text, $email );
global $wpdb;
$hasConsultation = false;

?>

<?php 

foreach ($order->get_items() as $item_id => $item) {
    $is_consultation = strpos($item->get_name(), 'Consultation') != false;

    if ($is_consultation) {
        $hasConsultation = true;
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

            // appointment time and date
            $unixTime = strtotime($data['items'][0]['slots'][0][2]);
            $UTCTime = date('M j, Y g:i a', $unixTime);
            $apptTime = date('Y-m-d H:i:s', $unixTime);

            // convert to users timezone
            $startTime = new DateTime($UTCTime);
            $startTime->setTimezone(new DateTimeZone($timezone));
            $dateTime = date_format($startTime, 'g:i a'); // appt date & time

            // time and date info
            $booklyDuration = floor($serviceInfo[0]->duration/60);
            $duration = $booklyDuration > 0 ? ($booklyDuration - 5) : $booklyDuration;

            $endDateTime = new DateTime($UTCTime);
            $endDateTime->setTimezone(new DateTimeZone($timezone));
            $endDateTime->add(new DateInterval('PT' . $duration . 'M'));

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

            // Google Calendar
            $calendarUrl = sprintf( 'https://calendar.google.com/calendar/render?action=TEMPLATE&text=%s&dates=%s/%s&details=%s',
                urlencode( "Matriarchy Build Consultation with $staffName" ),
                $startTime->format('Ymd\THis'),
                $endDateTime->format('Ymd\THis'),
                urlencode( sprintf( "%s\n%s\n%s", "1:1 Consultation with $staffName", "$joinUrl", "Passcode: $password" ) ));
        }
    }
} ?>

<?php if ($hasConsultation): ?>
    <p style="font-weight: bold; margin-bottom: 0; text-decoration: underline;">Consultation Details</p>

    <p>You can access your <?= $duration; ?> min 1:1 Consultation with <?= $staffName; ?> at <?= $dateTime; ?> through <a href="<?= $joinUrl; ?>" target="_blank"><img style="height: 20px; margin-right: 4px;" src="https://d3k81ch9hvuctc.cloudfront.net/company/WG95tq/images/1bd4e92b-ee86-482e-8523-071d9287af70.png"/></a><a href="<?= $joinUrl; ?>" target="_blank"><?= $joinUrl; ?></a> <?php if ($password): ?>(pw: <em><b><?= $password; ?></b</em>)<?php endif; ?></p>
    <p style="font-weight: bold; margin-bottom: 0; text-decoration: underline;">Prepare for Your Session</p>
    <p>We strongly recommend completing your pre-consultation questionnaire and submitting all relevant photos to your Pro prior to your session with ample time for your Pro to review them. Depending on your project type, measurements, tools, drawings or images might be useful. Click here to fill out your pre-consultation questionnaire. <a href="<?= site_url();?>/my-account/view-order/<?= $order->ID; ?>"><?= site_url();?>/my-account/view-order/<?= $order->ID; ?></a></p>

    <p>And visit our How it Works section for more guidance on preparing for your session. <a href="<?= site_url();?>/how-it-works"><?= site_url();?>/how-it-works</a></p>
    <br/>
    <p><a href="<?= $calendarUrl ?>"><b>Add this meeting to your calendar</a></a></p>

    <p style="margin-top: 40px; font-size: 11px;">By engaging in Pro consultations, I agree to Matriarchy Build's <a href="<?= site_url();?>/terms-of-use" target="_blank">Terms of Use</a>.</p>
<?php endif; ?>
<?php

/*
 * @hooked WC_Emails::email_footer() Output the email footer
 */
do_action( 'woocommerce_email_footer', $email );
