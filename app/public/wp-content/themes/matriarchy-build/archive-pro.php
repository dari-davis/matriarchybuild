<?php get_header(); ?>

<?php if ( have_posts() ): ?>
  <div class="pros mb-5">

    <?= get_template_part('partials/filters') ?>

    <?php
    $order_posts = new WP_Query(array(
      'post_type' => 'pro', 
      'post_status' => 'publish', 
      'orderby' => 'menu_order', 
      'order' => 'ASC', 
    ));
    ?>

    <div class="pros__row row m-0">
      <?php while ($order_posts->have_posts()): $order_posts->the_post(); ?>
        <div class="col-md-4 col-xl-3 pros__pro mb-5">
          <?= get_template_part('partials/pro-card'); ?>
        </div>
      <?php endwhile; ?>
      <?php wp_reset_postdata(); ?>
    </div>
  </div>
<?php endif; ?>

<?php get_footer(); ?>
