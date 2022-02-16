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

defined( 'ABSPATH' ) || exit;

$notes = $order->get_customer_order_notes();
?>
<p>

<?php if ( $notes ) : ?>
	<h2><?php esc_html_e( 'Order updates', 'woocommerce' ); ?></h2>
	<ol class="woocommerce-OrderUpdates commentlist notes">
		<?php foreach ( $notes as $note ) : ?>
		<li class="woocommerce-OrderUpdate comment note">
			<div class="woocommerce-OrderUpdate-inner comment_container">
				<div class="woocommerce-OrderUpdate-text comment-text">
					<p class="woocommerce-OrderUpdate-meta meta"><?php echo date_i18n( esc_html__( 'l jS \o\f F Y, h:ia', 'woocommerce' ), strtotime( $note->comment_date ) ); // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped ?></p>
					<div class="woocommerce-OrderUpdate-description description">
						<?php echo wpautop( wptexturize( $note->comment_content ) ); // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped ?>
					</div>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
			</div>
		</li>
		<?php endforeach; ?>
	</ol>
<?php endif; ?>

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
            <div class="consultation-card__pro"><?= $staffName; ?></div>
            <div class="consultation-card__detail"><?= $staffTrade; ?></div>
        </div>
        <div class="col mb-borders--right p-3">
            <div><?= $date; ?></div>
            <div><?= date_format($startTime, 'g:i').'-'.date_format($endTime, 'g:i').$timeOfDay; ?></div>
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

<div class="row no-gutters m-0">
	<div class="col-8 p-0">
		<div class="pt-md-5">
			<h2><?php esc_html_e( 'Project Details', 'woocommerce' ); ?></h2>
			<hr class="mb-hr mb-hr--olive" />
		</div>

		<p>Get acquainted with the project details by reviewing the images and questionnaire answers below.</p>
	</div>

    <?php if( get_post_meta($order_id, 'answer1', true)): ?>
        <div class="questionnaire">
            <div>
            <?php
                echo get_post_meta($order_id, 'answer1', true);
                echo '<br/>';
                echo get_post_meta($order_id, 'answer2', true);
                echo '<br/>';
                echo get_post_meta($order_id, 'answer3', true);
                echo '<br/>';
                echo get_post_meta($order_id, 'answer4', true);
            ?>
            </div>
        </div>
    <?php else: ?>
        <form class="questionnaire px-4 py-5" method="post">
            <?php function submitQuestionnaire($order_id) {
                echo "Your questionnarie has been successfully submitted!";
                $order = wc_get_order($order_id);
                $order->update_meta_data('answer1', $_POST["question1"]);
                $order->update_meta_data('answer2', $_POST["question2"]);
                $order->update_meta_data('answer3', $_POST["question3"]);
                $order->update_meta_data('answer4', $_POST["question4"]);
                $order->save();
                var_dump($order->get_meta_data());
            }
            if (isset($_POST['submit'])) { submitQuestionnaire($order_id); } ?>

            <div class="form-group row py-3 m-0">
                <label for="question1" class="questionnaire__label col-sm-2 col-form-label p-0">Question 1</label>
                <div class="col-sm-10">
                    <textarea class="form-control" rows="3" id="question1" name="question1"></textarea>
                </div>
            </div>
            <div class="form-group row py-3 m-0">
                <label for="question2" class="questionnaire__label col-sm-2 col-form-label p-0">Question 2</label>
                <div class="col-sm-10">
                    <textarea class="form-control" rows="3" id="question2" name="question2"></textarea>
                </div>
            </div>
            <div class="form-group row py-3 m-0">
                <label for="question3" class="questionnaire__label col-sm-2 col-form-label p-0">Question 3</label>
                <div class="col-sm-10">
                    <textarea class="form-control" rows="3" id="question3" name="question3"></textarea>
                </div>
            </div>
            <div class="form-group row py-3 m-0">
                <label for="question4" class="questionnaire__label col-sm-2 col-form-label p-0">Question 4</label>
                <div class="col-sm-10">
                    <textarea class="form-control" rows="3" id="question4" name="question4"></textarea>
                </div>
            </div>
            <div class="d-flex py-3"><input type="submit" value="Save" name="submit" class="w-auto button alt"></div>

        </form>
    <?php endif; ?>
</div>

<div class="row no-gutters m-0">
    <div class="col-8 p-0">
		<div class="pt-md-5">
			<h2><?php esc_html_e( 'Need To Cancel Or Reschedule', 'woocommerce' ); ?></h2>
			<hr class="mb-hr mb-hr--olive" />
		</div>

		<p>Give your Expert more project details by filling out a quick survey & you can upload files to review during your consultation.</p>
        <a href="/contact" class="d-inline-flex button w-auto">Contact Matriarchy Build</a>
	</div>
</div>