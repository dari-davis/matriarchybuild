<?php 

/**
 * Template Name: Report
 *
 */

global $wpdb;

header('Content-Type: text/csv');
header('Content-Disposition: attachment; filename="matriarchy-build-pro-sessions.csv"');

echo 'Order ID,Pro Name,Session Date,Session Length,Session Price', "
"; // CSV headers

// gets items from last 50 orders
$orders = $wpdb->get_results('SELECT order_item_id, order_id FROM wp_woocommerce_order_items WHERE order_item_name = "1:1 Consultation" ORDER BY order_id DESC LIMIT 50');

// gets metadata from last 50 orders
foreach ($orders as $order) {
	$id = $order->order_item_id;
	$booklyData = $wpdb->get_results('SELECT meta_value FROM wp_woocommerce_order_itemmeta WHERE order_item_id='.$id.' AND meta_key = "bookly"');
	$orderTotal = $wpdb->get_results('SELECT meta_value FROM wp_woocommerce_order_itemmeta WHERE order_item_id='.$id.' AND meta_key = "_line_total"');

   foreach ($booklyData as $data) {
      $details = unserialize($data->meta_value);
      $serviceId = $details['items'][0]['service_id'];
      $serviceInfo = $wpdb->get_results('SELECT * FROM wp_bookly_services WHERE id="'.$serviceId.'";');

      // staff details
      $staffId = $details['items'][0]['staff_ids'][0];
      $staffInfo = $wpdb->get_results('SELECT * FROM wp_bookly_staff WHERE id="'.$staffId.'";');
      $staffName = $staffInfo[0]->full_name;

      // appointment time and date
      $unixTime = strtotime($details['items'][0]['slots'][0][2]);
      $apptTime = date('m-d-Y', $unixTime);

      $booklyDuration = floor($serviceInfo[0]->duration/60);
      $duration = $booklyDuration > 0 ? ($booklyDuration - 5) : $booklyDuration;
      $orderPrice = number_format($orderTotal[0]->meta_value,2,'.','.');

      echo '',$order->order_id, ', ', $staffName, ', ', $apptTime, ', ', $duration, ', ', '$'.$orderPrice, "
      ";
   }
}
?>