<?php
/**
 * Template Name: Page (Default)
 * Description: Page template with Sidebar on the left side.
 *
 */

get_header();

the_post();
?>
<div class="row px-2 px-md-4 container m-auto">
	<div class="col-12">
		<div id="post-<?php the_ID(); ?>" <?php post_class( 'content' ); ?>>
			<h1 class="entry-title visually-hidden"><?php the_title(); ?></h1>
			<?php
				the_content();

				wp_link_pages(
					array(
						'before' => '<div class="page-links">' . __( 'Pages:', 'matriarchy-build' ),
						'after'  => '</div>',
					)
				);
				edit_post_link( esc_html__( 'Edit', 'matriarchy-build' ), '<span class="edit-link">', '</span>' );
			?>
		</div><!-- /#post-<?php the_ID(); ?> -->
		<?php
			// If comments are open or we have at least one comment, load up the comment template.
			if ( comments_open() || get_comments_number() ) :
				comments_template();
			endif;
		?>
	</div><!-- /.col -->
</div><!-- /.row -->
<?php
get_footer();
