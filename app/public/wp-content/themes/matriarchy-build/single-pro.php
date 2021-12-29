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
        <?php if ($terms): ?>
          <?php foreach ($terms as $term): ?>
            <a href="<?= get_term_link($term->slug, 'pros') ?>"><?= $term->name ?></a>
          <?php endforeach; ?>
        <?php endif; ?>
      </div>

      <?php echo do_shortcode('[bookly-form service_id="1" staff_member_id="2" hide="categories,services,staff_members,date,week_days,time_range"]
'); ?>
      
      <div class="booking-card my-5">
        <div class="row m-0">
          <div class="col-4 p-0">
            <div class="booking-card__label m-0 p-3">Duration</div>
            <div class="booking-card__detail p-3">1hr</div>
          </div>
          <div class="col-4 p-0">
            <div class="booking-card__label m-0 p-3">Price</div>
            <div class="booking-card__detail p-3">$100</div>
          </div>
          <div class="col-4 p-0">
            <div class="booking-card__label m-0 p-3">Consultation Type</div>
            <div class="booking-card__detail p-3">1:1</div>
          </div>
        </div>
        <div class="co booking-card__action text-center p-3">
          <a href="#">Book a Time</a>
        </div>
      </div>

    <?php endwhile; ?>
  </div>
<?php endif; ?>

<?php wp_reset_postdata(); ?>

<? get_footer(); ?>

<!-- [bookly-form service_id="1" staff_member_id="1" hide="categories,services,staff_members,date,week_days,time_range"] -->