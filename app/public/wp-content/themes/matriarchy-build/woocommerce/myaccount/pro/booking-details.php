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
$upload_dir = wp_upload_dir();
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
            $startTime->setTimezone(new DateTimeZone($staffInfo[0]->time_zone));

            // bookly appointment
            $appointment = $wpdb->get_results('SELECT * FROM wp_bookly_appointments WHERE start_date="'.$apptTime.'";');
            $appointmentId = $appointment[0]->id;

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
            $appointment = $wpdb->get_results('SELECT * FROM wp_bookly_appointments WHERE start_date="'.$apptTime.'";');
            if ($appointment) {
                $zoomId = $appointment[0]->online_meeting_id;
                $appointmentData = explode(",", $appointment[0]->online_meeting_data);
                $object = json_decode (json_encode ($appointmentData), FALSE);

                // Join Url
                $joinArray = explode('":"', str_replace("\/", "/", $object[12]));
                if ($appointment[0]->online_meeting_provider == 'google_meet') {
                    $joinUrl = $appointment[0]->online_meeting_id;
                } else {
                    $joinUrl = str_replace('"', '', $joinArray[1]);
                }

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
    <?php $user_id = $order->customer_id; ?>
    <?php if (isset($data['items']) && !empty($serviceInfo)): ?>
        <div class="consultation-card consultation-card--<?= $apptIsWhen; ?> row mb-borders m-0 mb-4">
            <div class="col-12 col-lg consultation-card__yellow-bg p-3">
                <div class="consultation-card__detail mb-2"><?= $serviceInfo[0]->title;?></div>
                <div class="consultation-card__pro consultation-card__pro--customer"><?= "$customerFName $customerLName"; ?></div>
            </div>
            <div class="col-12 col-lg p-3">
                <div><?= $date; ?></div>
                <div><?= date_format($startTime, 'g:i').'-'.date_format($endTime, 'g:i').$timeOfDay; ?></div>
                <?php if(!empty($zoomId)): ?>
                    <?php if ($appointment[0]->online_meeting_provider == 'google_meet'): ?>
                        <a class="consultation-card__google-link badge badge-primary" href="<?= $joinUrl; ?>" target="_blank"><i class="fas fa-video fa-fw"></i> Google Meet <i class="fas fa-external-link-alt fa-fw"></i></a>
                    <?php else: ?>
                        <a class="consultation-card__zoom-link badge badge-primary" href="<?= $joinUrl; ?>" target="_blank"><i class="fas fa-video fa-fw"></i> Zoom <i class="fas fa-external-link-alt fa-fw"></i></a>
                        <?php if ($password): ?><span class="consultation-card__zoom-passcode" class="my-2">Passcode: <?= $password; ?></span><?php endif; ?>
                    <?php endif; ?>
                <?php endif; ?>
            </div>
            <div class="col-12 col-lg p-3 d-flex justify-content-lg-end">
                <div><?= wc_price($price); ?></div>
            </div>
        </div>
        <?php $hasConsultations = true; ?>
    <?php endif; ?>

    <?php if ($apptIsWhen == "past"): ?>
        <div class="row no-gutters m-0">
            <div class="col-md-8 p-0">
                <div class="pt-md-5">
                    <h2><?php esc_html_e( 'Notes To The Client', 'woocommerce' ); ?></h2>
                    <hr class="mb-hr mb-hr--olive" />
                </div>

                <form method="post">
                    <?php $showSection = true; ?>
                    <?php function submitClientNote($order, $order_id) {
                        $showSection = false;
                        $order->update_meta_data("notes_to_client", $_POST["note"]);
                        $order->save();
                    }
                    if (isset($_POST['submit'])) { submitClientNote($order, $order_id); } ?>

                    <?php if( empty(get_post_meta($order_id, "notes_to_client"))): ?>
                        <p>Following your session with the client you may want to send a recap of your conversation, a list of materials/tools, or topics for a follow-up consultation.</p>
                        <div class="form-group row m-0">
                            <div class="p-0">
                                <textarea class="form-control" rows="12" id="note" name="note" required></textarea>
                            </div>
                        </div>
                        <div class="d-flex py-3"><button type="submit" value="Send" name="submit" class="w-auto button alt">Send</button>
                    <?php else: ?>
                        <div class="my-account__client-note"><?= str_replace("\'", "'", get_post_meta($order_id, "notes_to_client", true)); ?></div>
                    <?php endif; ?>
                </form> 
            </div>
        </div>
    <?php endif; ?>

    <?php if (!empty($order->get_customer_note())): ?>
    <div class="row no-gutters m-0">
        <div class="col-md-8 p-0">
            <div class="pt-md-5">
                <h2><?php esc_html_e( 'Note from the Client', 'woocommerce' ); ?></h2>
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

            <?php $hasAnswers = false; $answers = ['answer3', 'answer2', 'answer3', 'answer4', 'answer5', 'answer6']; ?>
            <?php foreach($answers as $answer) { if( get_post_meta($order_id, $answer, true)) { $hasAnswers = true; }} ?>

            <?php if ($apptIsWhen == "past"): ?>
                <?php if ($hasAnswers): ?>
                    <p>Get acquainted with the project details by reviewing the questionnaire answers below.</p>
                <?php else: ?>
                    <p>No questionnaire was submitted for this consultation.</p>
                <?php endif; ?>
            <?php else: ?>
                <?php if ($hasAnswers): ?>
                    <p>Get acquainted with the project details by reviewing the images and/or questionnaire answers below.</p>
                <?php else: ?>
                    <p>A questionnaire has not yet been submitted for this consultation.</p>
                <?php endif; ?>
            <?php endif; ?>
        </div>

        <?php if ($apptIsWhen == "future"): ?>

            <?php $entries = $wpdb->get_results('SELECT entry_id FROM wp_frmt_form_entry_meta WHERE meta_value="'.$order_id.'";');
                $totalImageCount = 0; ?>

            <?php if ($entries): ?>
                <div class="questionnaire questionnaire--photos p-4 mb-4 d-flex row gx-3">
                    <?php foreach($entries as $entry): ?>
                        <?php $photos = $wpdb->get_results('SELECT meta_value FROM wp_frmt_form_entry_meta WHERE meta_key="upload-1" AND entry_id="'.$entry->entry_id.'"');
                            $filepath = explode("file_path", $photos[0]->meta_value);
                            $images = explode("/uploads", $filepath[1]); ?>

                        <?php foreach($images as $image): ?>
                            <?php $src = str_replace('"', '', explode(";i:", $image)[0]);

                            if (strpos($src, ';') !== false) { $path = substr($src, 0, strpos($src, ';'));
                            } else { $path = $src; }
                            
                            $image = $upload_dir['baseurl'] . $path;
                            $attachment = attachment_url_to_postid($image); ?>

                            <?php if ($attachment > 0): ?>
                                <div class="questionnaire__image col-3 mb-3" data-photo-id="<?= $attachment; ?>">
                                    <a class="questionnaire__image-link d-block" href="#" data-slick-index="<?= $totalImageCount; ?>">
                                        <div class="questionnaire__overlay"></div>
                                        <img data-no-lazy src="<?= $image; ?>"/>
                                    </a>
                                    <?php $totalImageCount++; ?>
                                </div>
                            <?php endif; ?>
                        <?php endforeach; ?>
                    <?php endforeach; ?> 
                </div>
            <?php endif; ?>
        <?php endif; ?>
        
        <?php if($hasAnswers): ?>
            <?= get_template_part('partials/questionnaire-answers', null, array('orderId' => $order_id)); ?>
        <?php endif; ?>
    </div>

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