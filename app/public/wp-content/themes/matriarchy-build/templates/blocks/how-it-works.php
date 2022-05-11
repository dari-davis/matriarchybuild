<?php
/** 
 * Block: How It Works
 */

$page = is_page('how-it-works');
$howItWorksPage = get_page_by_path('how-it-works')->ID;
if (is_archive('pro')) { $backgroundColor = get_field('background_color', $howItWorksPage); } else { $backgroundColor = get_field('background_color'); }
if (is_archive('pro')) { $activeBackgroundColor = get_field('active_step_background_color', $howItWorksPage); } else { $activeBackgroundColor = get_field('active_step_background_color'); }
?>

<div class="how-it-works <?php if ($page): ?>how-it-works--page <?php endif; ?>d-lg-flex flex-column<?php if (!$page): ?> content-block" style="background-color: <?= $backgroundColor; ?>;<?php endif; ?>">
    <div class="how-it-works__container <?php if ($page): ?>d-md-flex flex-column flex-xl-row align-items-lg-end align-items-xl-start<?php else: ?>d-xl-flex<?php endif; ?>">
        <div class="how-it-works__header row col-11 col-md-5 <?php if ($page): ?>col-lg-6<?php else: ?>col-lg-4<?php endif; ?> gx-0">
            <div class="how-it-works__scafolding col-3 <?php if ($page): ?>col-lg-4<?php else: ?>col-lg-6<?php endif; ?>" data-no-lazy></div>
            <div class="how-it-works__heading col-6 <?php if ($page): ?>col-lg-8<?php endif; ?> mb-borders d-flex justify-content-center align-items-center"><h2 class="m-0">How It Works</h2></div>
            <div class="how-it-works__arrows col-2 d-flex flex-column flex-lg-row<?php if($page): ?> d-none<?php endif; ?>">
                <button class="how-it-works__prev prev" aria-label="Previous" type="button"></button>
                <button class="how-it-works__next next" aria-label="Next" type="button"></button>
            </div>
        </div>
        <div class="how-it-works__content how-it-works__slides row gx-0">
            <?php if (have_rows('steps', $howItWorksPage)): ?>
                <?php while (have_rows('steps', $howItWorksPage)): the_row(); ?>
                    <div class="how-it-works__section mb-borders <?php if ($page): ?>d-flex<?php endif; ?>" style="background-color: <?= $activeBackgroundColor; ?>;">
                        <div class="how-it-works__top <?php if ($page): ?>d-md-flex col-md-6<?php else: ?>d-lg-flex<?php endif; ?>">
                            <div class="how-it-works__step">Step <?= get_row_index(); ?><img data-no-lazy class="d-none <?php if ($page): ?>d-md-inline<?php else: ?>d-lg-inline<?php endif; ?>" src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/arrow_blue_medium.svg" alt="blue arrow"/></div>
                            <div class="how-it-works__title h2 mb-0">
                                <span><?= get_sub_field('title'); ?></span>
                                <div class="how-it-works__scafolding d-none <?php if ($page): ?>d-md-block<?php endif;?> col-1" data-no-lazy></div>  
                            </div>
                        </div>
                        <div class="how-it-works__description <?php if ($page): ?>flex-column<?php endif; ?>">
                            <span><?= get_sub_field('description'); ?></span>
                            <?php if (get_sub_field('blurb')): ?>
                                <?php if ($page): ?><p class="how-it-works__blurb"><?= get_sub_field('blurb'); ?></p><?php endif; ?>
                            <?php endif; ?>
                            <div class="how-it-works__scafolding d-none <?php if (!$page): ?>d-lg-block<?php endif;?> col-1" data-no-lazy></div>
                        </div>
                    </div>
                <?php endwhile; ?>
            <?php endif; ?>
            <?php if ($page): ?>
                <div class="row gx-0"><a class="button button--secondary justify-content-center align-items-center d-flex" href="<?= home_url('/pro'); ?>">Find a Pro</a></div>
            <?php endif; ?>
        </div>
    </div>
</div>

<?php if (!$page): ?>
    <script type="text/javascript">
        var $ = jQuery || $;
        $(document).ready(function() {
            $('.how-it-works__slides').slick({
                prevArrow: $('.how-it-works__prev'),
                nextArrow: $('.how-it-works__next'),
                infinite: true,
                variableWidth: true,
                slidesToShow: 1
            });
        });
    </script>
<?php endif; ?>