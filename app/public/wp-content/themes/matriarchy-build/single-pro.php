<?php get_header(); ?>

<?php if ( have_posts() ): ?>
  <div class="container">
    <?php while ( have_posts() ) : the_post(); ?>
      <h1><?= the_title(); ?></h1>
      <div><?= get_field('company'); ?></div>
      <div><?= get_field('trade'); ?></div>
      <div><a href="<?= get_field('social'); ?>" target="_blank">Instagram</a></div>
      <div class="py-4">
        <?= the_content(); ?>
      </div>
      <div>
        <?php $terms = get_the_terms(get_the_ID(), 'pros'); ?>
        <?php foreach ($terms as $term): ?>
          <a href="<?= get_term_link($term->slug, 'pros') ?>"><?= $term->name ?></a>
        <?php endforeach; ?>
      </div>
    <?php endwhile; ?>
  </div>
<?php endif; ?>

<?php wp_reset_postdata(); ?>

<? get_footer(); ?>
