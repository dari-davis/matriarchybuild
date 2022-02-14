<?php
/**
 * Pro Schedule
 *
*/

?>


<div class="row no-gutters">
	<div class="col-8">
		<div class="pt-md-5">
			<h2><?php esc_html_e( 'Create Schedule', 'woocommerce' ); ?></h2>
			<hr class="mb-hr mb-hr--olive" />
		</div>

		<p class="p-explainer"><strong>Example:</strong> I am available for consultations on <span class="p-emphasis">February 09, 2022</span>, between <span class="p-emphasis">8:00am and 4:00pm</span>, except for <span class="p-emphasis">10:30am to 11:30am</span>, and <span class="p-emphasis">1:00pm to 3:00pm</span</p>
	</div>	
	<!-- <?php echo do_shortcode('[bookly-staff-schedule]'); ?> -->

	<br/><br/>
	<?php echo do_shortcode('[bookly-staff-special-days]'); ?>
</div>