<?php get_header(); ?>

<?php if ( have_posts() ): ?>
  <div class="pros px-md-4">
    <div class="pros__row row m-0">
      <?php while (have_posts()): the_post(); ?>
        <?php $staff = Bookly\Lib\Entities\Staff::query()->where( 'wp_user_id', get_field('pro_user') )->findOne(); ?>
        <?php $services = $wpdb->get_results('SELECT * FROM wp_bookly_staff_services WHERE staff_id="'.$staff->id.'";'); ?>
        <div class="pros__pro col-md-6 col-lg-3 mb-3 mx-md-2 p-0">
          <div class="row m-0">
            <div class="pros__details col p-0 scfold">
              <a class="pros__name" href="<?php the_permalink(); ?>"><div class="pros__title p-2"><?= the_title(); ?></div></a>
              <?php if (has_post_thumbnail()): ?>
                <a href="<?php the_permalink(); ?>"><?php the_post_thumbnail('large', ['class' => 'pros__image']); ?></a>
              <?php endif; ?>
              <div class="pros__trade p-2"><?= get_field('trade'); ?></div>
            </div>
            <div class="pros__bookable col d-flex flex-column p-0">
              <a class="pros__header-button scfold text-center <?php if (!empty($services)): ?>bookable<?php endif; ?>" href="<?php the_permalink(); ?>" title="Pro Is Available for Booking"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/calendar.svg"/></a>
            </div>
          </div>
        </div>

      <?php endwhile; ?>
    </div>
  </div>
<?php endif; ?>

<?php get_footer(); ?>
