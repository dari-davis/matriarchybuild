<?php
/**
 * The template for displaying content in the index.php template.
 */
?>

<article id="post-<?php the_ID(); ?>" <?php post_class( 'archives__archive mb-5 col-md-4 col-xl-3' ); ?>>

	<?php if (get_post_type() === 'pro'): ?>
		<div class="archives__pro mb-5"><?= get_template_part('partials/pro-card'); ?></div>
	<?php else: ?>
		<?= get_template_part('partials/article'); ?>
	<?php endif; ?>
</article><!-- /#post-<?php the_ID(); ?> -->
