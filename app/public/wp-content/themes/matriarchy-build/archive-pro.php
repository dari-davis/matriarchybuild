<?php get_header(); ?>

<?php if ( have_posts() ): ?>
  <div class="pros px-md-4">

    <?= get_template_part('partials/filters') ?>

    <div class="pros__row row m-0">
      <?php while (have_posts()): the_post(); ?>
        <div class="col-md-4 pros__pro mb-5">
          <?= get_template_part('partials/pro-card'); ?>
        </div>
      <?php endwhile; ?>
    </div>
  </div>
<?php endif; ?>

<?php get_footer(); ?>
