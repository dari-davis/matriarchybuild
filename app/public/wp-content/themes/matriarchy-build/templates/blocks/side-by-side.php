<?php
/** 
 * Block: Side by Side
 */

$background_color = get_field('background_color');

?>

<div class="side-by-side" style="background-color: <?= empty($background_color) ? '' : $background_color; ?>">
    <?php if (have_rows('content_row')): ?>
        <div class="side-by-side__wrapper py-5">
            <div class="row gx-0 justify-content-md-end">
                <div class="col-md-7">
                    <h2 class="side-by-side__heading mb-5 pb-2"><?= get_field('heading'); ?></h2>
                    <?php if (have_rows('supplies')): ?>
                        <div class="side-by-side__supplies pb-5">
                            <h3 class="side-by-side__subheading">Supplies</h3>
                            <?php while (have_rows('supplies')): the_row(); ?>
                                <div class="side-by-side__supply"><?= get_sub_field('supply'); ?></div>
                            <?php endwhile; ?>
                        </div>
                    <?php endif; ?>
                    <h3 class="side-by-side__subheading"><?= get_field('sub_heading'); ?></h3>
                </div>
            </div>
            <div class="side-by-side__instructions row gx-0">
                <?php while (have_rows('content_row')): the_row(); ?>
                    <div class="side-by-side__step d-flex">    
                        <div class="col-md-5">
                            <h3 class="side-by-side__label"><?= get_sub_field('heading'); ?></h3>
                        </div>
                        <div class="col-md-7">
                            <div class="side-by-side__content"><?= get_sub_field('content'); ?></div>
                        </div>
                    </div>
                <?php endwhile; ?>  
            </div>
        </div>
    <?php endif; ?>
</div>