<?php
/**
 * Template Name: Page (Full width)
 * Description: Page template full width.
 *
 */

get_header();

the_post();
?>

<div class="row no-gutters m-0 position-relative">
	<div class="col-12 p-0">
		<?php if (has_post_thumbnail()): ?>
			<a class="page__image-wrapper" href="<?php the_permalink(); ?>"><?php the_post_thumbnail('full', ['class' => 'page__featured-image']); ?></a>
		<?php else: ?>
			<div class="page__image-wrapper"><div class="page__featured-image"></div></div>
		<?php endif; ?>

		<div id="post-<?php the_ID(); ?>" <?php post_class( 'page__content-wrapper d-flex' ); ?>>
			<h1 class="page__title entry-title mb-borders mb-borders--pink pt-4 pb-3 mb-0 text-center"><?php the_title(); ?></h1>

			<div class="page__content mb-borders mb-borders--pink">
				<div class="page__content-inner mx-auto">
					<?php
						the_content();

						wp_link_pages( array(
							'before' => '<div class="page-links">' . __( 'Pages:', 'matriarchy-build' ),
							'after'  => '</div>',
						) );
						edit_post_link( __( 'Edit', 'matriarchy-build' ), '<span class="d-none edit-link">', '</span>' );
					?>
				</div>
			</div>
		</div><!-- /#post-<?php the_ID(); ?> -->
	</div>
</div>
<?php

get_footer();
