<?php
/**
 * The template for displaying the archive loop.
 */

if ( have_posts() ) :
?>
	<div class="row no-gutters m-0">
		<div class="col-12 p-0">
			<div class="archives">
				<?php if (is_search() || is_tax()): ?>
					<?= get_template_part('partials/filters'); ?>
				<?php endif; ?>
				<div class="archives__row row m-0 p-0 gx-3">
				<?php
					while ( have_posts() ) :
						the_post();

						/**
						 * Include the Post-Format-specific template for the content.
						 * If you want to overload this in a child theme then include a file
						 * called content-___.php (where ___ is the Post Format name) and that will be used instead.
						 */
						get_template_part( 'content', 'index' ); // Post format: content-index.php

					endwhile;
				?>
				</div>
			</div>
			<?php if (is_search()): ?>
				<?= get_template_part('partials/search-callout'); ?>
			<?php endif; ?>
		</div>
	</div>
<?php
endif;

wp_reset_postdata();
