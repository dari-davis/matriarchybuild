<?php get_header(); ?>

<?php
use Bookly\Lib\Utils\Common;
use Bookly\Lib\Entities\Staff;
use Bookly\Lib\Entities\StaffService;
$staff = Bookly\Lib\Entities\Staff::query()->where( 'wp_user_id', get_field('pro_user') )->findOne();
?>

<?php $services = $wpdb->get_results('SELECT * FROM wp_bookly_staff_services WHERE staff_id="'.$staff->id.'";'); ?>

<?php if ( have_posts() ): ?>
  <div class="pro">
    <?php while ( have_posts() ) : the_post(); ?>

      <div class="pro__header row px-md-5">
        <div class="col-md-8 p-0 d-flex">
          <div class="d-flex flex-column">
            <a class="d-none pro__header-button scfold text-center" href="#" title="Favorite This Pro"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/heart.svg"/></a>
            <a class="pro__header-button scfold text-center <?php if (!empty($services)): ?>bookable<?php endif; ?>" href="#" title="Pro Is Available for Booking"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/calendar.svg"/></a>
          </div>
          <div class="pro__title scfold text-center d-flex"><h1 class="pro__name m-0"><?= the_title(); ?></h1></div>
        </div>
        <div class="pro__attributes col-md-4 p-0">
          <?php if (get_field('trade')): ?><div class="d-flex px-3"><?= get_field('trade'); ?></div><?php endif; ?>
          <?php if (get_field('location')): ?><div class="d-flex px-3"><?= get_field('location'); ?></div><?php endif; ?>
          <?php if (get_field('website') || get_field('social')): ?>
            <div class="d-flex px-3">
              <?php if (get_field('website')): ?><a href="<?= get_field('website'); ?>" target="_blank"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/link.svg"/></a><?php endif; ?>
              <?php if (get_field('social')): ?><a class="px-1" href="<?= get_field('social'); ?>" target="_blank"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/instagram.svg"/></a><?php endif; ?>
            </div>
          <?php endif; ?>
        </div>
      </div>

      <div class="row pro__image col-md-8">
      <?php if (has_post_thumbnail()): ?>
                    <?php the_post_thumbnail('large', ['class' => 'artist-single__image']); ?>
                  <?php endif; ?>
      </div>

      <div class="pro__details row no-gutters py-4">
        <div class="px-md-5 py-3 row no-gutters">
          <div class="pro__content <?= get_field('services') ? 'col-md-8' : 'col-md' ?> px-4"><?= the_content(); ?></div>
          <?php if (get_field('services')): ?>
            <div class="pro__services col-md-4">
              <h3>Services</h3>
              <?php foreach(get_field('services') as $service): ?>
                <div class="pro__service"><?= $service ?></div>
              <?php endforeach; ?>
            </div>
          <?php endif; ?>
        </div>
      </div>

      <?php wp_enqueue_script( 'jquery-ui-dialog' ); ?>

      <?php if (!empty($services)): ?>
        <div class="pro__booking p-md-5">
          <script>
            var $ = jQuery.noConflict();
            $(document).ready(function($) {
              $('[data-bookly]').on('click', function(e) {
                let dialog = $(e.currentTarget).data('bookly');
                $(dialog).dialog({
                  minWidth: 836,
                  classes: {
                    'ui-dialog': 'booking-dialog'
                  },
                  open: function() {
                    $(this).parent().promise().done(function () {
                      let content = $(dialog).find('#service-info').html();
                      $('[data-consultation-details]').html(content).removeClass('invisible');
                    });
                  }
                });
              });
            });
          </script>

          <div class="pro__booking-heading d-inline-flex"><h2 class="p-3 m-0">Book A Consultation</h2></div>

          <?php foreach($services as $row): ?>
            <!-- <?php print_r($row); ?> -->
            <?php $service = Bookly\Lib\Entities\Service::find( $row->service_id ); ?>
            <!-- <?php print_r($service->duration); ?> -->

            <div id="dialog-<?= $row->service_id; ?>">
              <div class="bookly-box bookly-box--heading p-2 mb-0 pb-0">
                <h3>Book A Consultation</h3>
                <div class="bookly-box__details d-flex row">
                  <div class="col-6 py-3" data-consultation-details></div>
                  <div class="col-6 py-3"><?= $service->duration == 1800 ? '30mins' : '1hr'; ?><br/>$<?= $row->price; ?></div>
                </div>
              </div>
              <?php echo do_shortcode('[bookly-form category_id="-1" service_id="'.$row->service_id.'" staff_member_id="'.$row->staff_id.'" hide="categories,services,staff_members,date,week_days,time_range"]'); ?>
            </div>

            <div class="booking-card my-5">
              <div class="row m-0">
                <div class="col-4 p-0">
                  <div class="booking-card__label m-0 p-3">Duration</div>
                  <div class="booking-card__detail p-3">
                    <?= $service->duration == 1800 ? '30mins' : '1hr'; ?>
                  </div>
                </div>
                <div class="col-4 p-0">
                  <div class="booking-card__label m-0 p-3">Price</div>
                  <div class="booking-card__detail p-3">$<?= $row->price; ?></div>
                </div>
                <div class="col-4 p-0">
                  <div class="booking-card__label m-0 p-3">Consultation Type</div>
                  <div class="booking-card__detail p-3">
                    <?= $row->capacity_max == 1 ? '1:1' : 'Class'; ?>
                  </div>
                </div>
              </div>
              <div class="co booking-card__action text-center p-3">
                <a class="text-button text-button--blue" data-bookly="#dialog-<?= $row->service_id; ?>" href="#">Book a Time</a>
              </div>
            </div>
          <?php endforeach; ?>
        </div>
      <?php endif; ?>
      
      

    <?php endwhile; ?>
  </div>
<?php endif; ?>

<?php wp_reset_postdata(); ?>

<? get_footer(); ?>

<!-- [bookly-form service_id="1" staff_member_id="1" hide="categories,services,staff_members,date,week_days,time_range"] -->

<!-- <div class="container"><?php print_r($staff); ?></div> -->
