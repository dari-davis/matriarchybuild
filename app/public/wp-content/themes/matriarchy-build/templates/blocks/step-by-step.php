<?php
/** 
 * Block: Step by Step
 */

?>

<div class="step-by-step">
    <div class="step-by-step__heading"><?= get_field('heading'); ?></div>
    <div class="step-by-step__instructions">
        <?php if (have_rows('instructions')): ?>
            <?php while (have_rows('instructions')): the_row(); ?>
                <div><?= get_sub_field('heading'); ?></div>
                <div><?= get_sub_field('content'); ?></div>
            <?php endwhile; ?>  
        <?php endif; ?>
    </div>
</div>