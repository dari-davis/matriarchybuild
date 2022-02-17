<?php
/**
 * The template for displaying search forms.
 */
?>
<div class="col-md-8">
	<form class="search-form" role="search" method="get" action="<?php echo esc_url( home_url( '/' ) ); ?>">
		<div class="input-group">
			<input type="text" name="s" class="form-control" placeholder="<?php esc_attr_e( 'Search', 'matriarchy-build' ); ?>" />
			<button type="submit" class="btn btn-secondary" name="submit"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/search.svg"/></button>
		</div><!-- /.input-group -->
	</div>
</form>
