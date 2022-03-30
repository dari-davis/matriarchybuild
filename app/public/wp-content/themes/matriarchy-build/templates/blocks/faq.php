<?php
/** 
 * Block: FAQ
 */

?>

<?php
$faqPage = get_page_by_path('faq')->ID;
$post_blocks = parse_blocks(get_the_content('', false, $pageId));
?>

<div class="faqs faq--<?= get_field('style'); ?> py-5">
    <div class="content-blocks__wrapper mx-auto d-flex flex-column">
        <?php if (get_field('title')): ?><h3 class="faqs__title"><?= get_field('title'); ?></h3><?php endif; ?>
        <?php if (have_rows('faq', $faqPage)): ?>
            <?php while(have_rows('faq', $faqPage)): the_row(); ?>
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
                <a href="<?= home_url('/faq'); ?>" class="button">View All</a>
            <?php endif; ?>
        <?php endif; ?>
    </div>
</div>