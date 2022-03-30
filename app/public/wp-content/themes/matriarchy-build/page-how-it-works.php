<?php
/**
 * Template Name: How It Works
 * Description: Page template for How It Works.
 *
 */

get_header();

the_post();
?>

<div class="main__row row no-gutters m-0 position-relative">
	<div class="col-12 p-0">
        <?php the_content(); ?>

        <?php
            wp_link_pages( array(
                'before' => '<div class="page-links">' . __( 'Pages:', 'matriarchy-build' ),
                'after'  => '</div>',
            ) );
            edit_post_link( __( 'Edit', 'matriarchy-build' ), '<span class="d-none edit-link">', '</span>' );
        ?>
	</div>
</div>
<?php

get_footer();
