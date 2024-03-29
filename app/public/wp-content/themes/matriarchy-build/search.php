<?php
/**
 * The Template for displaying Search Results pages.
 */

get_header();

if ( have_posts() ) :
?>	
	<header class="page-header">
		<h1 class="page-title visually-hidden"><?php printf( esc_html__( 'Search Results for: %s', 'matriarchy-build' ), get_search_query() ); ?></h1>
	</header>

<?php get_template_part( 'archive', 'loop' );
else :
?>
<div class="search__container row no-gutters position-relative py-5">
	<div class="col-12 p-0">
		<article id="post-0" class="post no-results not-found">
			<header class="entry-header">
				<h1 class="entry-title"><?php esc_html_e( 'Nothing Found', 'matriarchy-build' ); ?></h1>
			</header><!-- /.entry-header -->
			<p><?php esc_html_e( 'Sorry, but nothing matched your search criteria. Please try again with some different keywords.', 'matriarchy-build' ); ?></p>
			<?php get_search_form(); ?>
		</article><!-- /#post-0 -->
	</div>
</div>
<?php
endif;
wp_reset_postdata();

get_footer();
