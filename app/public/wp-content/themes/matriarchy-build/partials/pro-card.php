<?php $staff = Bookly\Lib\Entities\Staff::query()->where( 'wp_user_id', get_field('pro_user') )->findOne(); ?>
<?php if ($staff): ?>
    <?php $services = $wpdb->get_results('SELECT * FROM wp_bookly_staff_services WHERE staff_id="'.$staff->id.'";'); ?>
<?php endif; ?>
<div class="row pros__card gx-0">
    <div class="pros__details col p-0 mb-borders">
        <?php if (have_rows('display_name')): ?>
            <?php while (have_rows('display_name')): the_row(); ?>
                <?php if (get_sub_field('line_1')): ?>
                    <a class="pros__pro-name d-block" href="<?php the_permalink(); ?>"><div class="pros__title d-block"><?= get_sub_field('line_1'); ?><br/><?= get_sub_field('line_2'); ?></div></a>
                <?php else: ?>
                    <a class="pros__pro-name d-block" href="<?php the_permalink(); ?>"><div class="pros__title"><?= the_title(); ?></div></a>
                <?php endif; ?>
            <?php endwhile; ?>
        <?php endif; ?>
        <?php if (has_post_thumbnail()): ?>
            <a class="pros__image-wrapper" aria-label="Pro" href="<?php the_permalink(); ?>" style="background-image: url('<?= get_the_post_thumbnail_url(); ?>');"><div class="pros__image"></div></a>
        <?php else: ?>
            <a class="pros__image-wrapper" aria-label="Pro" href="<?php the_permalink(); ?>"><div class="pros__image"></div></a>
        <?php endif; ?>
        <div class="pros__trade px-2"><?= get_field('trade'); ?></div>
    </div>
    <div class="pros__bookable col d-flex flex-column p-0">
        <?php $title_tag = empty($services) ? "Pro is not available for booking" : "Pro is available for booking"; ?>
        <a class="pros__header-button d-flex justify-content-center mb-borders text-center <?php if (!empty($services)): ?>bookable<?php endif; ?>" href="<?php the_permalink(); ?>" title="<?= $title_tag; ?>">
            <?php if (!empty($services)): ?>
                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/icon-bookable.svg" alt="Pros bookable card icon"/>
            <?php else: ?>
                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/icon-not-bookable.svg" alt="Pros non-bookable card icon"/>
            <?php endif; ?>
        </a>
    </div>
</div>