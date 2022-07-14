<?php
/**
 * The template for displaying content in the single.php template.
 *
 */
?>

<?php $product = is_product(); ?>

<div class="main__row row no-gutters m-0 position-relative">
	<div class="product col-12 p-0">
		<?php if (!$product): ?>
			<?php if (has_post_thumbnail()): ?>
				<a class="single-post__image-wrapper" style="background-image: url('<?= get_the_post_thumbnail_url(); ?>');" href="<?php the_permalink(); ?>"><div class="single-post__featured-image"></div></a>
			<?php else: ?>
				<a class="single-post__image-wrapper" style="background-image: url('<?= get_template_directory_uri(); ?>/assets/images/page-background-03.png ?>');" href="<?php the_permalink(); ?>"><div class="single-post__featured-image"></div></a>
			<?php endif; ?>

			<div class="single-post__content-wrapper d-flex">
				<div class="single-post__header">
					<div class="single-post__title-container">
						<img class="d-none d-lg-block" src="<?php echo get_template_directory_uri(); ?>/assets/images/scafolding-posts-small.png">
						<h1 class="single-post__title entry-title mb-borders mb-borders--pink px-3 mb-0 text-center d-flex"><?php the_title(); ?></h1>
					</div>
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
									<span class="px-2">by <?= get_the_author(); ?></span>
								</div>
							</div>
						</div><!-- /.entry-meta -->
					<?php endif; ?>
				</div>

				<div class="single-post__content">
					<img class="d-none d-lg-block" src="<?php echo get_template_directory_uri(); ?>/assets/images/scafolding-posts.png">
					<div class="mb-borders mb-borders--pink">
						<div class="single-post__content-inner mx-auto">
							<?php if (get_field('content')) { echo get_field('content'); } ?>
						</div>
					</div>
				</div>
			</div>
		<?php endif; ?>

		<?php if (!$product): ?>
			<div id="post-<?php the_ID(); ?>" class="single-post__content-blocks mx-auto mt-5 mt-lg-0">
				<div class="col-12 p-0">
					<?php the_content(); ?>
				</div>
			</div>
		<?php else: ?>
			<div id="post-<?php the_ID(); ?>" class="single-post__content-blocks mx-auto mt-5 mt-lg-0">
				<div class="col-12 p-0">
				<h1 class="product__title pt-0 mb-4"><?php the_title(); ?></h1>

					<?php the_content(); ?>
				</div>
			</div>
		<?php endif; ?>

		<?= get_template_part('partials/post-diy-inspiration'); ?>

		<?php if (get_field('pros')): ?>
			<?= get_template_part('partials/post-featured-pros'); ?>
		<?php endif; ?>

		<?php
		wp_link_pages( array(
			'before' => '<div class="page-links">' . __( 'Pages:', 'matriarchy-build' ),
			'after'  => '</div>',
		) );
		edit_post_link( __( 'Edit', 'matriarchy-build' ), '<span class="d-none edit-link">', '</span>' );
		?>

	</div>
</div>
