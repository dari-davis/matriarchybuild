<?php
/**
 * The template for displaying content in the single.php template.
 *
 */
?>

<div class="row no-gutters m-0 position-relative">
	<div class="col-12 p-0">
		<?php if (has_post_thumbnail()): ?>
			<a class="single-post__image-wrapper" href="<?php the_permalink(); ?>"><?php the_post_thumbnail('full', ['class' => 'single-post__featured-image']); ?></a>
		<?php else: ?>
			<div class="single-post__image-wrapper"><div class="single-post__featured-image"></div></div>
		<?php endif; ?>

		<div id="post-<?php the_ID(); ?>" <?php post_class( 'single-post__content-wrapper d-flex' ); ?>>
			<div class="single-post__header">
				<h1 class="single-post__title entry-title mb-borders mb-borders--pink px-4 mb-0 text-center d-flex"><?php the_title(); ?></h1>

				<?php if ( 'post' === get_post_type() ): ?>
					<div class="entry-meta">
						<div class="row m-0">
							<div class="single-post__date col-auto p-0 d-flex">
								<span><?= the_time('m'); ?></span>
								<span><?= the_time('j'); ?></span>
								<span><?= the_time('y'); ?></span>
							</div>
							<div class="single-post__meta col-auto p-0 d-flex flex-column">
								<span class="px-2"><?= the_category(' , '); ?></span>
								<span class="px-2"><?= get_the_author(); ?></span>
							</div>
						</div>
					</div><!-- /.entry-meta -->
				<?php endif; ?>
			</div>

			<div class="single-post__content">
				<img src="<?php echo get_template_directory_uri(); ?>/assets/images/scafolding_posts.png">
				<div class="mb-borders mb-borders--pink">
					<div class="single-post__content-inner mx-auto">
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
			</div>
		</div><!-- /#post-<?php the_ID(); ?> -->
	</div>
</div>
