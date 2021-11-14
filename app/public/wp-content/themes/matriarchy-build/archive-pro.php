<?php get_header(); ?>

<?php if ( have_posts() ): ?>
  <div class="container-lg">
    <div class="row">
      <?php while (have_posts()): the_post(); ?>
        <div class="col-md-6 col-lg-3 p-3">
          <img class="py-3" src="https://via.placeholder.com/1200/eee">
          <div><a href="<?php the_permalink(); ?>"><?= the_title() ?></a></div>
          <div><?= get_field('trade'); ?></div>
        </div>
      <?php endwhile; ?>
    </div>
  </div>
<?php endif; ?>

<?php get_footer(); ?>
