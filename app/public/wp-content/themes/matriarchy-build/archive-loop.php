<?php
/**
 * The template for displaying the archive loop.
 */

if ( have_posts() ) :
?>
	<div class="row no-gutters m-0">
		<div class="col-12 p-0">
			<div class="archives">
				<?php if (is_search()): ?>
					<h3>Search Results for</h3>
					<form class="search-form search-form--page my-2 pb-3 pb-md-4 mt-md-2 mb-md-4" role="search" method="get" action="<?php echo esc_url( home_url( '/' ) ); ?>">
						<div class="input-group">
							<input type="text" name="s" class="form-control"
							placeholder="<?= get_search_query(); ?>"
							title="<?php esc_attr_e( 'Search', 'matriarchy-build' ); ?>" />
							<button type="submit" name="submit" aria-label="Search"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/search-blue.svg" alt="Search icon"/></button>
						</div>
					</form>
				<?php endif; ?>

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
