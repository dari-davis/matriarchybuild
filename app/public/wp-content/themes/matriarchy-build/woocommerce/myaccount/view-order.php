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

$images = get_attached_media('', $order->get_id());
global $wpdb;
global $post;
$user_id = get_current_user_id();
$upload_dir = wp_upload_dir();
?>

<?php 

foreach ($order->get_items() as $item_id => $item) {
    $data =  $item->get_meta("bookly");
    if (is_array($data)) { $timezone = $data['time_zone']; }

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

        $price = $item->get_total();

        // get current date and time in users timezone
        $currentDateTime = date_timezone_set(new DateTime('now'), timezone_open($data['time_zone']));
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

<?php if (isset($data['items']) && !empty($serviceInfo)): ?>
    <div class="consultation-card row mb-borders m-0 mb-4">
        <div class="col-12 col-lg consultation-card__yellow-bg p-3">
            <div class="consultation-card__detail mb-2"><?= $serviceInfo[0]->title;?></div>
            <div class="consultation-card__pro"><?= $staffName; ?></div>
            <div class="consultation-card__detail"><?= $staffTrade; ?></div>
        </div>
        <div class="col-12 col-lg p-3">
            <div><?= $date; ?></div>
            <div><?= date_format($startTime, 'g:i').'-'.date_format($endTime, 'g:i').$timeOfDay; ?></div>
            <?php if(!empty($zoomId) && $apptIsWhen == "future"): ?>
                <a class="consultation-card__zoom-link badge badge-primary" href="<?= $joinUrl; ?>" target="_blank"><i class="fas fa-video fa-fw"></i> Zoom <i class="fas fa-external-link-alt fa-fw"></i></a>
                <?php if ($password): ?><span class="consultation-card__zoom-passcode" class="my-2">Passcode: <?= $password; ?></span><?php endif; ?>
            <?php endif; ?>
        </div>
        <div class="col-12 col-lg p-3 d-flex justify-content-lg-end">
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

<div class="row no-gutters m-0">

    <?php $hasAnswers = false; $answers = ['answer3', 'answer2', 'answer3', 'answer4', 'answer5', 'answer6']; ?>
    <?php foreach($answers as $answer) { if( get_post_meta($order_id, $answer, true)) { $hasAnswers = true; }} ?>

    <div class="col-md-8 p-0">
        <div class="pt-md-5">
            <h2><?php esc_html_e( 'Project Details', 'woocommerce' ); ?></h2>
            <hr class="mb-hr mb-hr--olive" />
        </div>
        <?php if ($apptIsWhen == "past" && !$hasAnswers): ?>
            <p>No questionnaire was submitted for this consultation.</p>
        <?php endif; ?>
    </div>

    <div class="hidden" id="uploads"></div>

    <div class="photos__section p-0 mb-5 mb-md-0">
        <?php $entries = $wpdb->get_results('SELECT entry_id FROM wp_frmt_form_entry_meta WHERE meta_value="'.$order_id.'";');
              $totalImageCount = 0; ?>

    <?php if ($apptIsWhen == "future"): ?>
        <div class="col-md-8 p-0">
            <div class="pt-md-5">
                <h4 class="my-account__details-heading"><?php esc_html_e( 'Step 1: Fill Out Your Questionnaire', 'woocommerce' ); ?></h4>
                <hr class="mb-hr mb-hr--olive" />
            </div>
        </div>
    <?php endif; ?>

    <?php if($hasAnswers): ?>
        <?= get_template_part('partials/questionnaire-answers', null, array('orderId' => $order_id)); ?>
    <?php else: ?>
        <?php if ($apptIsWhen == "future"): ?>
            <?= get_template_part('partials/questionnaire-questions', null, array('orderId' => $order_id)); ?>
        <?php endif; ?>
    <?php endif; ?>

    <?php if ($apptIsWhen == "future"): ?>
        <div class="col-md-8 p-0">
            <div class="pt-3 pt-md-5">
                <h4 class="my-account__details-heading"><?php esc_html_e( 'Step 2: Upload Your Project Files', 'woocommerce' ); ?></h4>
                <hr class="mb-hr mb-hr--olive" />
                <p>Add up to 10 files. Please note maximum file size of 20 MB. (Accepted file types: .jpg, .jpeg, .png, .gif, .bmp, .pdf)</p>
            </div>
        </div>

        <div class="photos__section p-0">
            <div class="photos__content">
                <?php if ($apptIsWhen == "future" && $totalImageCount < 10): ?>
                    <div class="questionnaire questionnaire__photo-form p-4">
                        <?= do_shortcode('[forminator_form id="2329"]'); ?>
                        <!-- forminator_form_id="923" -->
                    </div>
                <?php endif; ?>
            </div>
        </div>
    <?php endif; ?>

    <script>
    if (window.history.replaceState) {window.history.replaceState(null, null, window.location.href);}
    </script>

    <?php if ($apptIsWhen == "future"): ?>

        <?php wp_enqueue_script( 'jquery-ui-dialog' ); ?>

        <div class="photos__dialog p-0 mx-md-auto" id="dialog">
            <?php foreach($entries as $entry): ?>
                <?php $photos = $wpdb->get_results('SELECT meta_value FROM wp_frmt_form_entry_meta WHERE meta_key="upload-1" AND entry_id="'.$entry->entry_id.'"');
                    $filepath = explode("file_path", $photos[0]->meta_value);
                    $images = explode("/uploads", $filepath[1]); array_shift($images);?>

                <?php foreach($images as $image): ?>
                    <?php $src = str_replace('"', '', explode(";i:", $image)[0]);

                    if (strpos($src, ';') !== false) { $path = substr($src, 0, strpos($src, ';'));
                    } else { $path = $src; }
                    
                    $image = $upload_dir['baseurl'] . $path; ?>

                    <div class="photos__image d-flex justify-content-center align-items-center">
                        <div class="photos__image-container">
                            <div class="image-inner">
                                <img data-no-lazy src="<?= $image; ?>"/>
                            </div>
                        </div>
                    </div>    
                <?php endforeach; ?>
            <?php endforeach; ?>
        </div>

        <script>
        var $ = jQuery.noConflict(),
            $dialog = $('#dialog');
        $(document).ready(function($) {
            $dialog.slick({
                infinite: true,
                slidesToShow: 1,
                variableWidth: true
            });

            $('.questionnaire__image-link').on('click', function(e) {
                $dialog.slick('slickGoTo', $(this).attr('data-slick-index'));

                $dialog.dialog({
                    maxWidth: 800,
                    height: 'auto',
                    width: 'auto',
                    classes: {
                        'ui-dialog': 'photos-dialog'
                    }
                });
            });
        
        });
        </script>
    <?php endif; ?>

    <?php if ($apptIsWhen == "future"): ?>
        <?= get_template_part('partials/image-uploads', null, array('orderId' => $order_id, 'imageCount' => count($images))); ?>
    <?php endif; ?>
</div>

<?php if (!empty($order->get_customer_note())): ?>
    <div class="row no-gutters m-0">
        <div class="col-md-8 p-0">
            <div class="pt-md-5">
                <h2><?php esc_html_e( 'Your Note To The Pro', 'woocommerce' ); ?></h2>
                <hr class="mb-hr mb-hr--olive" />
            </div>

            <p><?= $order->get_customer_note(); ?></p>
        </div>
    </div>
<?php endif; ?>

<div class="col-md-8 p-0">
    <div class="pt-md-5">
        <h2><?php esc_html_e( 'Notes From The Pro', 'woocommerce' ); ?></h2>
        <hr class="mb-hr mb-hr--olive" />
    </div>
</div>
<?php if( get_post_meta($order_id, "notes_to_client", true)): ?>
    <div class="col-md-8 p-0">
        <p>Your Pro has sent a followup message regarding your session.</p>
    </div>
    <div class="questionnaire py-4 px-0">
        <div class="form-group row py-3 mx-3">
            <div class="questionnaire__label col-sm-4 col-form-label p-0"><?= $staffName; ?> writes:</div>
            <div class=" col-sm-8">
                <div class="questionnaire__answer my-account__client-note m-0"><?= str_replace("\'", "'", get_post_meta($order_id, "notes_to_client", true)); ?></div>
            </div>
        </div>
    </div>
<?php else: ?>
    <div class="col-md-8 p-0">
        <p>Following your session, your Pro may send a recap of your conversation, a list of materials/tools, or topics for a follow-up consultation.</p>
    </div>
<?php endif; ?>

<?php if ($apptIsWhen == "future"): ?>
    <div class="row no-gutters m-0">
        <div class="col-md-8 px-0 py-5">
            <p><span class="bold-text">Need to cancel or reschedule?</span> Consultations can be rescheduled or canceled until 48 hours before your meeting time. Please email us at <a href="mailto:support@matriarchybuild.com">support@matriarchybuild.com</a> to cancel your appointment. If you need to reschedule an appointment with a Pro, contact us to cancel your session and rebook with your Pro at another time. Cancellations or reschedules with fewer than 48 hours notice will not be refunded.</p>
            <a href="mailto:support@matriarchybuild.com" class="d-inline-flex button w-auto">Contact Matriarchy Build</a>
        </div>
    </div>
<?php endif; ?>
