<?php
/**
 * Template Name: My Account
 * Description: Page template full width.
 *
 */

get_header();

the_post();
?>

<div class="main__row row no-gutters m-0 position-relative">
	<div class="col-12 p-0">

		<div id="post-<?php the_ID(); ?>" class="page__content-wrapper m-0">
			<h1 class="page__title entry-title mb-borders mb-borders--pink pt-4 pb-3 mb-0 text-center"><?php the_title(); ?></h1>

			<div class="page__content">
				<div class="page__content-inner mx-auto">
                    <div class="my-account m-0">
                        <div class="my-account__nav col-md py-md-5"><?php do_action( 'woocommerce_account_navigation' ); ?></div>
                        <?php the_content(); ?>
                    </div>
				</div>
			</div>
		</div><!-- /#post-<?php the_ID(); ?> -->
	</div>
</div>
<?php

get_footer();