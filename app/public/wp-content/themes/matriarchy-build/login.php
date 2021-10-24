<?php
/**
 * Template Name: Login
 * Description: Page template for login.
 *
 */

get_header();

the_post();
?>
<div id="post-<?php the_ID(); ?>" <?php post_class( 'content' ); ?>>
	<h1 class="entry-title visually-hidden"><?php the_title(); ?></h1>

  <?php wp_login_form() ?>
	<?php
		the_content();

		wp_link_pages( array(
			'before' => '<div class="page-links">' . __( 'Pages:', 'matriarchy-build' ),
			'after'  => '</div>',
		) );
		edit_post_link( __( 'Edit', 'matriarchy-build' ), '<span class="edit-link">', '</span>' );
	?>
</div><!-- /#post-<?php the_ID(); ?> -->
<?php

get_footer();
