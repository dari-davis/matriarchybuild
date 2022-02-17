<?php $staff = Bookly\Lib\Entities\Staff::query()->where( 'wp_user_id', get_field('pro_user') )->findOne(); ?>
<?php $services = $wpdb->get_results('SELECT * FROM wp_bookly_staff_services WHERE staff_id="'.$staff->id.'";'); ?>
<div class="pros__pro mb-5 p-0 mx-md-2">
    <div class="row m-0">
        <div class="pros__details col p-0 mb-borders">
            <a class="pros__pro-name" href="<?php the_permalink(); ?>"><div class="pros__title p-2"><?= the_title(); ?></div></a>
            <?php if (has_post_thumbnail()): ?>
                <a href="<?php the_permalink(); ?>"><?php the_post_thumbnail('large', ['class' => 'pros__image']); ?></a>
            <?php else: ?>
                <div class="pros__image"></div>
            <?php endif; ?>
            <div class="pros__trade p-2"><?= get_field('trade'); ?></div>
        </div>
        <div class="pros__bookable col d-flex flex-column p-0">
            <?php $title_tag = empty($services) ? "Pro is not available for booking" : "Pro is available for booking"; ?>
            <a class="pros__header-button d-flex justify-content-center mb-borders text-center <?php if (!empty($services)): ?>bookable<?php endif; ?>" href="<?php the_permalink(); ?>" title="<?= $title_tag; ?>"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/calendar.svg"/></a>
        </div>
    </div>
</div>