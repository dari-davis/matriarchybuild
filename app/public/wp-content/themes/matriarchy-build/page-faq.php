<?php
/**
 * Template Name: Page FAQ
 *
 */

get_header();
the_post();
?>

<div class="main__row row no-gutters m-0 position-relative">
	<div class="col-12 p-0">
		<?php if (has_post_thumbnail()): ?>
			<a class="page__image-wrapper" style="background-image: url('<?= get_the_post_thumbnail_url(); ?>');" href="<?php the_permalink(); ?>"><div class="page__featured-image"></div></a>
		<?php else: ?>
			<a class="page__image-wrapper" style="background-image: url('<?= get_template_directory_uri(); ?>/assets/images/page-background-02.png ?>');" href="<?php the_permalink(); ?>"><div class="post__featured-image"></div></a>
		<?php endif; ?>
		<div id="post-<?php the_ID(); ?>" class="page__content-wrapper m-0">

			<h1 class="page__title entry-title mb-borders mb-borders--pink pt-4 pb-3 mb-0 text-center"><?php the_title(); ?></h1>

			<div class="page__content">
				<div class="page__content-inner mx-auto">
                    <?php if (have_rows('faq')): ?>
                        <div class="faqs">
                            <?php while(have_rows('faq')): the_row(); ?>
                                <button class="faqs__question"><?= get_sub_field('question'); ?></button>
                                <div class="faqs__panel">
                                    <p class="faqs__answer"><?= get_sub_field('answer'); ?></p>
                                </div>
                            <?php endwhile; ?>
                        </div>
                    <?php endif; ?>
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

<script src="<?= get_template_directory_uri() . '/assets/js/accordion.js'; ?>"></script>

<?php

get_footer();
