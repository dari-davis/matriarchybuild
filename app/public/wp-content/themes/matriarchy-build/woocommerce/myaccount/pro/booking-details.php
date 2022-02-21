<?php
/**
 * Booking Details
 *
 */

defined( 'ABSPATH' ) || exit;

//$notes = $order->get_customer_order_notes();
$order_id = $_GET['id'];
?>


<?php $order = wc_get_order($order_id); ?>
<?= var_dump($order); ?>

<?php global $wpdb;

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

<?php if (isset($data['items']) && !empty($serviceInfo)): ?>
    <div class="consultation-card consultation-card--<?= $apptIsWhen; ?> row mb-borders m-0 mb-4">
        <div class="col mb-borders--right consultation-card__yellow-bg p-3">
            <div class="consultation-card__detail mb-2"><?= $serviceInfo[0]->title;?></div>
            <div class="consultation-card__pro consultation-card__pro--customer"><?= $staffName; ?></div>
        </div>
        <div class="col mb-borders--right p-3">
            <div><?= $date; ?></div>
            <div><?= date_format($startTime, 'g:i').'-'.date_format($endTime, 'g:i').$timeOfDay; ?></div>
        </div>
        <div class="col p-3 d-flex justify-content-end">
            <div><?= wc_price($price); ?></div>
        </div>
    </div>
    <?php $hasConsultations = true; ?>
<?php endif; ?>

<?php if( get_post_meta($order_id, 'answer1', true)): ?>
    <div class="row no-gutters m-0">
        <div class="col-md-8 p-0">
            <div class="pt-md-5">
                <h2><?php esc_html_e( 'Project Details', 'woocommerce' ); ?></h2>
                <hr class="mb-hr mb-hr--olive" />
            </div>

            <p>Get acquainted with the project details by reviewing the images and questionnaire answers below.</p>
        </div>

        <?php if (get_post_meta($order_id, 'photo1', true)): ?>
            <div class="questionnaire questionnaire--photos px-4 py-2 mb-4">
                <?= get_post_meta($order_id, 'photo1', true); ?>
            </div>
        <?php endif; ?>
        <div class="questionnaire px-4 py-5">
            <div class="form-group row py-3 m-0">
                <div class="questionnaire__label col-sm-4 col-form-label p-0">What project are you looking to tackle?</div>
                <div class=" col-sm-8 ps-md-4">
                    <p class="questionnaire__answer"><?= get_post_meta($order_id, 'answer1', true); ?></p>
                </div>
            </div>
            <div class="form-group row py-3 m-0">
                <div class="questionnaire__label col-sm-4 col-form-label p-0">What are your goals for your session?</div>
                <div class="col-sm-8 ps-md-4">
                    <p class="questionnaire__answer"><?= get_post_meta($order_id, 'answer2', true); ?></p>
                </div>
            </div>
            <div class="form-group row py-3 m-0">
                <div class="questionnaire__label col-sm-4 col-form-label p-0">Are there any tools, parts, materials, or obstacles specific to your project that you want to share with your Pro in advance of the session? If so, please do so here.</div>
                <div class="col-sm-8 ps-md-4">
                    <p class="questionnaire__answer"><?= get_post_meta($order_id, 'answer3', true); ?></p>
                </div>
            </div>
            <div class="form-group row py-3 m-0">
                <div class="questionnaire__label col-sm-4 col-form-label p-0">On a scale of 1 to 5 how would you rate your experience level? (For example, 1: I want to hang shelves but I’ve never used a drill; 5: I want to do a full kitchen remodel and I’ve just completed a bathroom remodel.)</div>
                <div class="col-sm-8 ps-md-4">
                    <p class="questionnaire__answer"><?= get_post_meta($order_id, 'answer4', true); ?></p>
                </div>
            </div>
            <div class="form-group row py-3 m-0">
                <div class="questionnaire__label col-sm-4 col-form-label p-0">Do you have any questions you’d like your Pro to be prepared to address in your session? Are there any additional notes for your Pro?</div>
                <div class="col-sm-8 ps-md-4">
                    <p class="questionnaire__answer"><?= get_post_meta($order_id, 'answer5', true); ?></p>
                </div>
            </div>
        </div>
    </div>
<?php endif; ?>

<div class="row no-gutters m-0">
    <div class="col-md-8 px-0 py-5">
		<p><span class="bold-text">Need to cancel or reschedule?</span> Give your Expert more project details by filling out a quick survey & you can upload files to review during your consultation.</p>
        <a href="/contact" class="d-inline-flex button w-auto">Contact Matriarchy Build</a>
	</div>
</div>