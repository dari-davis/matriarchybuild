<?php
/**
 * Template Name: Not found
 * Description: Page template 404 Not found.
 *
 */

get_header();

$search_enabled = get_theme_mod( 'search_enabled', '1' ); // Get custom meta-value.
?>
<div class="search__container row no-gutters position-relative py-5">
	<div class="col-12 p-0">
		<div id="post-0" class="content error404 not-found">
			<h1 class="entry-title"><?php esc_html_e( 'Not found', 'matriarchy-build' ); ?></h1>
			<div class="entry-content">
				<p><?php esc_html_e( 'It looks like nothing was found at this location.', 'matriarchy-build' ); ?></p>
				<div>
					<?php
						if ( '1' === $search_enabled ) :
							get_search_form();
						endif;
					?>
				</div>
			</div><!-- /.entry-content -->
		</div><!-- /#post-0 -->
	</div>
</div>
<?php
get_footer();
