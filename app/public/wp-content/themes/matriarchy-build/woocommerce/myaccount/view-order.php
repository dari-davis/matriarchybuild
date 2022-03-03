<?php
/**
 * View Order
 *
 * Shows the details of a particular order on the account page.
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/myaccount/view-order.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see     https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce\Templates
 * @version 3.0.0
 */

$images = get_attached_media('', $order->ID);
global $wpdb;
global $post;
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
        $staffSlug = str_replace(" ", "-", strtolower($staffName));
        $staffTrade = get_post_meta(get_page_by_path($staffSlug, OBJECT, 'pro')->ID, 'trade', true);

        // appointment time and date
        $unixTime = strtotime($data['items'][0]['slots'][0][2]);
        $date = date('M j, Y', $unixTime);
        $UTCTime = date('M j, Y g:i a', $unixTime);
        $apptTime = date('Y-m-d H:i:s', $unixTime);

        // convert to users timezone
        $startTime = date_timezone_set(new DateTime($UTCTime), timezone_open($data['time_zone']));
        $dateTime = date_format($startTime, 'M j, Y g:i a'); // appt date & time

        // time and date info
        $booklyDuration = floor($serviceInfo[0]->duration/60);
        $duration = $booklyDuration > 0 ? ($booklyDuration - 5) : $booklyDuration;
        $endTime = new DateTime(date_format($startTime, 'g:i a'));
        $endTime->add(new DateInterval('PT' . $duration . 'M'));
        $timeOfDay = date_format($endTime, 'a');

        $price = $item->get_total();

        // get current date and time in users timezone
        $currentDateTime = date_timezone_set(new DateTime('now'), timezone_open($data['time_zone']));
        $currentDateTime = date_format($currentDateTime, 'M j, Y g:i a');

        if (new DateTime($dateTime) <= new DateTime($currentDateTime)) {
            $apptIsWhen = "past";
        } else {
            $apptIsWhen = "future";
        }

        // Zoom ID
		$appointment = $wpdb->get_results('SELECT * FROM wp_bookly_appointments WHERE start_date="'.$apptTime.'";');
		$zoomId = $appointment[0]->online_meeting_id;
    }
} ?>

<?php if (isset($data['items']) && !empty($serviceInfo)): ?>
    <div class="consultation-card row mb-borders m-0 mb-4">
        <div class="col mb-borders--right consultation-card__yellow-bg p-3">
            <div class="consultation-card__detail mb-2"><?= $serviceInfo[0]->title;?></div>
            <div class="consultation-card__pro"><?= $staffName; ?></div>
            <div class="consultation-card__detail"><?= $staffTrade; ?></div>
        </div>
        <div class="col mb-borders--right p-3">
            <div><?= $date; ?></div>
            <div><?= date_format($startTime, 'g:i').'-'.date_format($endTime, 'g:i').$timeOfDay; ?></div>
            <?php if(!empty($zoomId) && ($apptIsWhen == 'future')): ?>
                <a class="consultation-card__zoom-link badge badge-primary" href="https://zoom.us/j/<?= $zoomId; ?>" target="_blank"><i class="fas fa-video fa-fw"></i> Zoom <i class="fas fa-external-link-alt fa-fw"></i></a>
            <?php endif; ?>
        </div>
        <div class="col p-3 d-flex justify-content-end">
            <div><?= wc_price($price); ?></div>
        </div>
        <div class="consultation-card__order row no-gutters m-0 py-2">
            <?php $orderNumber = $order->get_order_number();
                $orderDate = wc_format_datetime($order->get_date_created()); ?>
            <?= "Order $orderNumber was placed on $orderDate."; ?>
        </div>
    </div>
    <?php $hasConsultations = true; ?>
<?php endif; ?>

<?php if (!empty($order->customer_note)): ?>
    <div class="row no-gutters m-0">
        <div class="col-md-8 p-0">
            <div class="pt-md-5">
                <h2><?php esc_html_e( 'Your Note To The Pro', 'woocommerce' ); ?></h2>
                <hr class="mb-hr mb-hr--olive" />
            </div>

            <p><?= $order->customer_note ?></p>
        </div>
    </div>
<?php endif; ?>

<div class="row no-gutters m-0">
	<div class="col-md-8 p-0">
		<div class="pt-md-5">
			<h2><?php esc_html_e( 'Project Details', 'woocommerce' ); ?></h2>
			<hr class="mb-hr mb-hr--olive" />
		</div>

		<p>Get acquainted with the project details by reviewing the images and questionnaire answers below.</p>
	</div>

    <?php if ($images): ?>
        <div class="questionnaire questionnaire--photos p-4 mb-4 d-flex">
            <?php foreach($images as $image): ?>
                <div class="questionnaire__image me-3">
                    <img src="<?= wp_get_attachment_url($image->ID); ?>"/>
                    <a href="#" data-image-id="<?= $image->ID; ?>" class="photo-remove-btn">Remove</a>
                </div>
            <?php endforeach; ?>
        </div>
    <?php else: ?>
        <?php if ($apptIsWhen == "future"): ?>
            <?= get_template_part('partials/image-uploads', null, array('orderId' => $order_id)); ?>
        <?php endif; ?>
    <?php endif; ?>

    <?php if( !get_post_meta($order_id, 'answer1', true)): ?>
        <?= get_template_part('partials/questionnaire-answers', null, array('orderId' => $order_id)); ?>
    <?php else: ?>
        <?php if ($apptIsWhen == "future"): ?>
            <?= get_template_part('partials/questionnaire-questions', null, array('orderId' => $order_id)); ?>
        <?php endif; ?>
    <?php endif; ?>
</div>

<?php if ($apptIsWhen == "future"): ?>
    <div class="row no-gutters m-0">
        <div class="col-md-8 px-0 py-5">
            <p><span class="bold-text">Need to cancel or reschedule?</span> Give your Expert more project details by filling out a quick survey & you can upload files to review during your consultation.</p>
            <a href="/contact" class="d-inline-flex button w-auto">Contact Matriarchy Build</a>
        </div>
    </div>
<?php endif; ?>

<script>
    $ = jQuery || $;
    $('.photo-remove-btn').on('click', function(e) {
        e.preventDefault();
        console.log($(this).data('image-id'));
    });
</script>
