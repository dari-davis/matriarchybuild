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
  <?php
    get_template_part( 'templates/blocks/how-it-works', null, array(
        'background_color'  => '#',
        'active_step_background_color' => '#'
    ) );
  ?>

  <?php
    $args = wp_parse_args(
        array(),
        array(
          'background_color'  => get_field('background_color'),
          'active_step_background_color' => get_field('active_step_background_color')
        )
    );
  ?>

  <div class="how-it-works__wrapper">
    <div class="how-it-works__page-content col-12">
      <h1 class="sr-only sr-only-focusable"><?php the_title(); ?></h1>
      <?php the_content(); ?>
    </div>
  </div>

  <div class="how-it-works__faqs">
    <?php
      get_template_part( 'templates/blocks/faq', null, array(
          'title'  => 'FAQ',
          'style' => 'mini'
      ) );
    ?>

    <?php
      $args = wp_parse_args(
          $args,
          array(
            'title'  => get_field('title'),
            'style' => get_field('style')
          )
      );
    ?>
  </div>
</div>

<?php
    wp_link_pages( array(
        'before' => '<div class="page-links">' . __( 'Pages:', 'matriarchy-build' ),
        'after'  => '</div>',
    ) );
    edit_post_link( __( 'Edit', 'matriarchy-build' ), '<span class="d-none edit-link">', '</span>' );
?>
<?php

get_footer();
