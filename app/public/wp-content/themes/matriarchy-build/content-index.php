<?php
/**
 * The template for displaying content in the index.php template.
 */
?>

<article id="post-<?php the_ID(); ?>" <?php post_class( 'archives__archive mb-5 mx-md-2 p-0' ); ?>>

	<?php if (get_post_type() === 'pro'): ?>
		<?= get_template_part('partials/pro-card'); ?>
	<?php else: ?>
		<div class="row m-0">
			<div class="archives__details col p-0 mb-borders">
				<?php if (has_post_thumbnail()): ?>
                	<a href="<?php the_permalink(); ?>" style="background-image: url('<?= get_the_post_thumbnail_url(); ?>');"></a>
				<?php else: ?>
					<a href="<?php the_permalink(); ?>"><div class="archives__image"></div></a>
				<?php endif; ?>
				<a class="archives__name" href="<?php the_permalink(); ?>" title="<?php printf( esc_attr__( 'Permalink to %s', 'matriarchy-build' ), the_title_attribute( 'echo=0' ) ); ?>" rel="bookmark"><div class="archives__title p-2"><?php the_title(); ?></div></a>
			</div>
		</div><!-- /.col -->
	<?php endif; ?>
</article><!-- /#post-<?php the_ID(); ?> -->
