<?php
/**
 * The Template for displaying Archive pages.
 */

get_header();

if ( have_posts() ) :
?>
<header class="page-header">
	<h1 class="page-title h2">
		<?php
			if ( is_day() ) :
				printf( get_the_date() );
			elseif ( is_month() ) :
				printf( get_the_date( _x( 'F Y', 'monthly archives date format', 'matriarchy-build' ) ) );
			elseif ( is_year() ) :
				printf( get_the_date( _x( 'Y', 'yearly archives date format', 'matriarchy-build' ) ) );
			endif;
		?>
	</h1>
</header>
<?php
	get_template_part( 'archive', 'loop' );
else :
	// 404.
	get_template_part( 'content', 'none' );
endif;

wp_reset_postdata(); // End of the loop.

get_footer();
