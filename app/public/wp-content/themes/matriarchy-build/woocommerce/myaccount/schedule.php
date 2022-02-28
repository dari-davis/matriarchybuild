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

		<p class="p-explainer"><strong>Example:</strong> I am available for consultations on <span class="p-emphasis">February 09, 2022</span>, between <span class="p-emphasis">8:00am and 4:00pm</span>, except for <span class="p-emphasis">10:30am to 11:30am</span>, and <span class="p-emphasis">1:00pm to 3:00pm</span></p>
	</div>	
	
	<?php echo do_shortcode('[bookly-staff-special-days]'); ?>
</div>

<div class="row no-gutters">
	<div class="col-8">
		<div class="pt-md-5">
			<h2><?php esc_html_e( 'Create Recurring Schedule', 'woocommerce' ); ?></h2>
			<hr class="mb-hr mb-hr--olive" />
		</div>

		<p class="p-explainer">Curabitur ut nunc sed arcu faucibus luctus at sed eros. Nam nec congue nisi. Nullam ultrices maximus enim at malesuada. Etiam ornare augue ac bibendum porttitor. Quisque sed volutpat enim.</p>
	</div>
	<?php echo do_shortcode('[bookly-staff-schedule]'); ?>
</div>

<div class="row no-gutters days-off d-none">
	<div class="col-8">
		<div class="pt-md-5">
			<h2><?php esc_html_e( 'Select Days Off', 'woocommerce' ); ?></h2>
			<hr class="mb-hr mb-hr--olive" />
		</div>

		<p class="p-explainer">Curabitur ut nunc sed arcu faucibus luctus at sed eros. Nam nec congue nisi. Nullam ultrices maximus enim at malesuada. Etiam ornare augue ac bibendum porttitor. Quisque sed volutpat enim.</p>
	</div>
	<div class="col-8">
		<?php echo do_shortcode('[bookly-staff-days-off]'); ?>
	</div>
</div>

<script type="text/javascript">
	var $ = jQuery;
	$('.time-off-btn').on('click', function(e) {
		e.preventDefault();
		$('.days-off').removeClass('d-none');
	});
</script>