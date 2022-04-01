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

<?php /* translators: %s: Customer first name */ ?>
<p><?php printf( esc_html__( 'Hi %s,', 'woocommerce' ), esc_html( $order->get_billing_first_name() ) ); ?></p>
<?php /* translators: %s: Order number */ ?>
<p>You're one step closer to tackling your next project.</p>

<p style="font-weight: bold; margin-bottom: 0;">Consultation Confirmation</p>
<?php

/*
 * @hooked WC_Emails::order_details() Shows the order details table.
 * @hooked WC_Structured_Data::generate_order_data() Generates structured data.
 * @hooked WC_Structured_Data::output_structured_data() Outputs structured data.
 * @since 2.5.0
 */
do_action( 'woocommerce_email_order_details', $order, $sent_to_admin, $plain_text, $email );
global $wpdb;

?>

<?php 

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

        // appointment time and date
        $unixTime = strtotime($data['items'][0]['slots'][0][2]);
        $UTCTime = date('M j, Y g:i a', $unixTime);
        $apptTime = date('Y-m-d H:i:s', $unixTime);

        // convert to users timezone
        $startTime = date_timezone_set(new DateTime($UTCTime), timezone_open($data['time_zone']));
        $dateTime = date_format($startTime, 'g:i a'); // appt date & time

        // time and date info
        $booklyDuration = floor($serviceInfo[0]->duration/60);
        $duration = $booklyDuration > 0 ? ($booklyDuration - 5) : $booklyDuration;

        // Zoom ID
		$appointment = $wpdb->get_results('SELECT * FROM wp_bookly_appointments WHERE start_date="'.$apptTime.'";');
		$zoomId = $appointment[0]->online_meeting_id;
    }
} ?>

<p style="font-weight: bold; margin-bottom: 0;">Consultation Details</p>
<p>You can access your <?= $duration; ?> min 1:1 Consultation with <?= $staffName; ?> at <?= $dateTime; ?> through <a href="https://zoom.us/j/<?= $zoomId; ?>" target="_blank"><img style="height: 20px; margin-right: 4px;" src="<?php echo get_template_directory_uri(); ?>/assets/images/zoom-link.png"/></a><a href="https://zoom.us/j/<?= $zoomId; ?>" target="_blank">https://zoom.us/j/<?= $zoomId; ?></a></p>

<p style="font-weight: bold; margin-bottom: 0;">Prepare for Your Session</p>
<p>We strongly recommend completing your pre-consultation questionnaire and submitting all relevant photos to your Pro prior to your session with ample time for your Pro to review them. Depending on your project type, measurements, tools, drawings or images might be useful. Click here to fill out your pre-consultation questionnaire. <a href="<?= site_url();?>/my-account/view-order/<?= $order->ID; ?>"><?= site_url();?>/my-account/view-order/<?= $order->ID; ?></a></p>

<p>And visit our How it Works section for more guidance on preparing for your session. <a href="<?= site_url();?>/how-it-works"><?= site_url();?>/how-it-works</a></p>
<?php

/*
 * @hooked WC_Emails::email_footer() Output the email footer
 */
do_action( 'woocommerce_email_footer', $email );
