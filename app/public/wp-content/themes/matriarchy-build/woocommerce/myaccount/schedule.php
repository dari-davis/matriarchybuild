<?php
/**
 * Pro Schedule
 *
*/

?>


<div class="row no-gutters pt-4 pt-md-0">
	<div class="col-lg-8">
		<div class="pt-md-5">
			<h2><?php esc_html_e( 'Create Custom Schedule', 'woocommerce' ); ?></h2>
			<hr class="mb-hr mb-hr--olive" />
		</div>

		<p class="p-explainer"><strong>Example:</strong> I am available for consultations on <span class="p-emphasis">February 09, 2022</span>, between <span class="p-emphasis">8:00am and 4:00pm</span>, except for <span class="p-emphasis">10:30am to 11:30am</span>, and <span class="p-emphasis">1:00pm to 3:00pm</span></p>
	</div>	
	
	<?php echo do_shortcode('[bookly-staff-advanced]'); ?>
	<?php echo do_shortcode('[bookly-staff-special-days]'); ?>
</div>

<div class="row no-gutters">
	<div class="col-lg-8 pt-5 pt-md-0">
		<div class="pt-md-5">
			<h2><?php esc_html_e( 'Create Recurring Schedule', 'woocommerce' ); ?></h2>
			<hr class="mb-hr mb-hr--olive" />
		</div>
		<p class="p-explainer">Example: I am available for consultations <span class="p-emphasis">every Thursday</span> between <span class="p-emphasis">10:00am and 5:00pm</span>, except for <span class="p-emphasis">Noon to 1:00pm</span>. (If you're going on vacation or need to take a day off please click on "Schedule Time Off" below.)</p>
	</div>
	<?php echo do_shortcode('[bookly-staff-schedule]'); ?>
</div>

<div class="row no-gutters days-off invisible">
	<div class="col-lg-8 pt-5 pt-md-0 days-off__header">
		<div class="pt-md-5">
			<h2><?php esc_html_e( 'Select Days Off', 'woocommerce' ); ?></h2>
			<hr class="mb-hr mb-hr--olive" />
		</div>

		<p class="p-explainer">Example: I am going on vacation and would like to block time off from my recurring schedule.</p>
	</div>
	<div class="col-lg-8">
		<?php echo do_shortcode('[bookly-staff-days-off]'); ?>
	</div>
</div>

<script type="text/javascript">
	var $ = jQuery;
	$('.time-off-btn').on('click', function(e) {
		e.preventDefault();
		$('.days-off').removeClass('invisible');
	});
</script>