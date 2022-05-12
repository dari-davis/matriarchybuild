<?php
/** 
 * Block: Hero
 */

?>

<div class="hero py-5" <?php if (get_field('background_image')): ?>style="background-image: url('<?= get_field('background_image'); ?>');"<?php endif; ?>>
    <div class="content-blocks__wrapper mx-auto d-flex flex-column col-12">
        <div class="hero__content row gx-0">
            <div class="col-md-6">
                <div class="hero__header">
                <p class="d-flex flex-column justify-content-center align-items-center">
                    <span class="hero__heading pb-4"><?= get_field('heading'); ?></span>
                    <?php if (get_field('subheading')): ?>
                        <span class="hero__subheading"><?= get_field('subheading'); ?></span>
                    <?php endif; ?>
                </p>
                </div>
                <div class="hero__bottom d-none d-md-block"></div>
            </div>
            <div class="col-md-6 hero__actions">
                <div class="hero__scafolding d-none d-md-block"></div>
                <div class="hero__buttons">
                    <?php if (have_rows('button_1')): ?>
                        <?php while( have_rows('button_1')): the_row(); ?>
                            <a href="<?= get_sub_field('link'); ?>" class="hero__button button button--tertiary"><?= get_sub_field('text'); ?></a>
                        <?php endwhile; ?>    
                    <?php endif; ?>
                    <?php if (have_rows('button_2')): ?>
                        <?php while( have_rows('button_2')): the_row(); ?>
                            <a href="<?= get_sub_field('link'); ?>" class="hero__button button button--tertiary"><?= get_sub_field('text'); ?></a>
                        <?php endwhile; ?>    
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </div>
</div>