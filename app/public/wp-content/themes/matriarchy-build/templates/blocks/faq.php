<?php
/** 
 * Block: FAQ
 */

?>

<div class="faqs faq--<?= get_field('style'); ?> py-5">
    <div class="content-blocks__wrapper mx-auto d-flex flex-column">
        <?php if (have_rows('faq')): ?>
            <?php while(have_rows('faq')): the_row(); ?>
                <?php if (get_field('style') == 'condensed'): ?>
                    <?php if (get_sub_field('show_in_mini')): ?>
                        <button class="faqs__question"><?= get_sub_field('question'); ?></button>
                        <div class="faqs__panel">
                            <p class="faqs__answer"><?= get_sub_field('answer'); ?></p>
                        </div>
                    <?php endif; ?>
                <?php else: ?>
                    <button class="faqs__question"><?= get_sub_field('question'); ?></button>
                    <div class="faqs__panel">
                        <p class="faqs__answer"><?= get_sub_field('answer'); ?></p>
                    </div>
                <?php endif; ?>
            <?php endwhile; ?>
            <?php if (get_field('style') == 'condensed'): ?>
                <a href="" class="button">View All</a>
            <?php endif; ?>
        <?php endif; ?>
    </div>
</div>