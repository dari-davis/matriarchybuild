<?php get_header(); ?>

<div class="pros mb-5">

  <?= get_template_part('partials/filters') ?>

  <div class="pros__row row m-0">
    <?php if ( have_posts() ): ?>
      <?php if(have_posts()){ while(have_posts()){ the_post(); ?>
        <div class="col-md-4 col-xl-3 pros__pro mb-5">
          <?= get_template_part('partials/pro-card'); ?>
        </div>
        <?php wp_reset_postdata(); ?>
      <?php }} ?>
    <?php else: ?>
      <p>No Pros match the current filter results. <a href="<?= home_url('/pro'); ?>">View all Pros</p>
    <?php endif; ?>
  </div>
</div>

<?= get_template_part('partials/search-callout'); ?>

<?php
  get_template_part( 'templates/blocks/how-it-works', null, array(
      'background_color'  => '#bbb69b',
      'active_step_background_color' => '#fbf8ea'
  ) );
?>

<?php
  $args = wp_parse_args(
      $args,
      array(
        'background_color'  => get_field('background_color'),
        'active_step_background_color' => get_field('active_step_background_color')
      )
  );
?>


<?php get_footer(); ?>
