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

      <div class="pro__header">
        <div class="pro__header-inner row px-md-5 px-lg-0 mx-0 col-xl-6">
          <div class="pro__header-title col-md-8 p-0 d-flex">
            <div class="d-flex flex-column">
              <a class="d-none pro__header-button mb-borders text-center" href="#" title="Favorite This Pro"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/heart.svg"/></a>
              <?php $title_tag = empty($services) ? "Pro is not available for booking" : "Pro is available for booking"; ?>
              <div class="pro__header-button mb-borders text-center <?php if (!empty($services)): ?>bookable<?php endif; ?>" title="<?= $title_tag ?>"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/calendar.svg"/></div>
            </div>
            <div class="pro__title mb-borders text-center d-flex">
              <?php while (have_rows('display_name')): the_row(); ?>
                <?php if (get_sub_field('line_1')): ?>
                  <h1 class="pro__name m-0"><?= get_sub_field('line_1'); ?><br/><?= get_sub_field('line_2'); ?></h1>
                <?php else: ?>
                  <h1 class="pro__name m-0"><span><?= the_title(); ?><span></h1>
                <?php endif; ?>
              <?php endwhile; ?>
            </div>
          </div>
          <div class="pro__attributes col-md-4 p-0">
            <?php if (get_field('trade')): ?><div class="d-flex px-3"><?= get_field('trade'); ?></div><?php endif; ?>
            <?php if (get_field('location')): ?><div class="d-flex px-3"><?= get_field('location'); ?></div><?php endif; ?>
            <?php if (get_field('website') || get_field('social')): ?>
              <div class="d-flex px-3">
                <?php if (get_field('website')): ?><a href="<?= get_field('website'); ?>" target="_blank"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/link.svg"/></a><?php endif; ?>

                <?php while (have_rows('social')): the_row(); ?>
                  <?php if (get_sub_field('instagram')): ?>
                    <a class="px-1" href="<?= get_sub_field('instagram'); ?>" target="_blank"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/instagram.svg"/></a>
                  <?php endif; ?>
                  <?php if (get_sub_field('facebook')): ?>
                    <a class="px-1" href="<?= get_sub_field('facebook'); ?>" target="_blank"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/facebook-pro.svg"/></a>
                  <?php endif; ?>
                  <?php if (get_sub_field('twitter')): ?>
                    <a class="px-1" href="<?= get_sub_field('twitter'); ?>" target="_blank"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/twitter-pro.svg"/></a>
                  <?php endif; ?>
                  <?php if (get_sub_field('youtube')): ?>
                    <a class="px-1" href="<?= get_sub_field('youtube'); ?>" target="_blank"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/link.svg"/></a>
                  <?php endif; ?>  
                <?php endwhile; ?>
              </div>
            <?php endif; ?>
          </div>
        </div>
      </div>

      <div class="pro__details-container row mx-auto">
        <div class="pro__image col-md-8 col-xl p-0">
          <div class="pro__image-inner p-lg-0">
            <ul class="slides list-unstyled m-0">
            <?php if (has_post_thumbnail()): ?>
              <li>
              <?php the_post_thumbnail('large', ['class' => 'pro__image']); ?></li>
            <?php endif; ?>

            <?php if (have_rows('assets')): ?>
              <?php while (have_rows('assets')): the_row();
                $image = get_sub_field('asset'); ?>
                <li><img src="<?= $image; ?>"/></li>
              <?php endwhile; ?>  
            <?php endif; ?>
            </ul>
          </div>
          <div class="pro__arrows">
            <button class="prev" aria-label="Previous" type="button"></button>
            <button class="next" aria-label="Next" type="button"></button>
          </div>
        </div>

        <script type="text/javascript">
          var $ = jQuery || $;
          $(document).ready(function() {
            $('.slides').slick({
              prevArrow: $('.prev'),
              nextArrow: $('.next')
            });
          });
        </script>

        <div class="pro__details py-4 col-xl-6 gx-0">
          <div class="py-3 row gx-0">
            <?php if (get_field('services')): ?>
              <div class="pro__services col-md-8">
                <h3>Services</h3>
                <?php foreach(get_field('services') as $service): ?>
                  <div class="pro__service"><?= $service ?></div>
                <?php endforeach; ?>
              </div>
            <?php endif; ?>
            <div class="pro__content <?= get_field('services') ? 'col-md-4' : 'col-md' ?>">
              <h3>Bio</h3>
              <?= get_field('content'); ?>
            </div>
          </div>
        </div>
      </div>

      <?php wp_enqueue_script( 'jquery-ui-dialog' ); ?>

      <?php if (!empty($services)): ?>
        <div class="pro__booking-container m-0">
          <div class="pro__booking mx-auto p-md-5">
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
                    <div class="col-6 py-3"><?= $service->duration == 1800 ? '25min' : '55min'; ?><br/>$<?= $row->price; ?></div>
                  </div>
                </div>
                <?php echo do_shortcode('[bookly-form category_id="-1" service_id="'.$row->service_id.'" staff_member_id="'.$row->staff_id.'" hide="categories,services,staff_members,date,week_days,time_range"]'); ?>
              </div>

              <div class="booking-card my-3 my-md-5">
                <div class="row m-0">
                  <div class="col-md-4 p-0 row m-0 flex-md-column">
                    <div class="booking-card__label m-0 p-2 p-md-3 col-6 col-md-auto">Duration</div>
                    <div class="booking-card__detail p-2 p-md-3 col-6 col-md-auto">
                      <?= $service->duration == 1800 ? '25min' : '55min'; ?>
                    </div>
                  </div>
                  <div class="col-md-4 p-0 row m-0 flex-md-column">
                    <div class="booking-card__label m-0 p-2 p-md-3 col-6 col-md-auto">Price</div>
                    <div class="booking-card__detail p-2 p-md-3 col-6 col-md-auto">$<?= $row->price; ?></div>
                  </div>
                  <div class="col-md-4 p-0 row m-0 flex-md-column">
                    <div class="booking-card__label m-0 p-2 p-md-3 col-6 col-md-auto">Consultation Type</div>
                    <div class="booking-card__detail p-2 p-md-3 col-6 col-md-auto">
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
        </div>
      <?php endif; ?>

      <?= the_content(); ?>

    <?php endwhile; ?>
  </div>
<?php endif; ?>

<?php wp_reset_postdata(); ?>

<? get_footer(); ?>

<!-- [bookly-form service_id="1" staff_member_id="1" hide="categories,services,staff_members,date,week_days,time_range"] -->

<!-- <div class="container"><?php print_r($staff); ?></div> -->
