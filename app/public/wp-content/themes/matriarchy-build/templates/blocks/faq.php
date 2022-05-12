<?php
/** 
 * Block: FAQ
 */

?>

<?php
$faqPage = get_page_by_path('faq')->ID;
$post_blocks = parse_blocks(get_the_content('', false, $faqPage));
?>

<div class="faqs faq--<?= $args['style']; ?>">
    <div class="content-blocks__wrapper mx-auto d-flex flex-column">
        <?php if ($args['title']): ?><h3 class="faqs__title"><?= $args['title'] ?></h3><?php endif; ?>
        <?php if (have_rows('faq', $faqPage)): ?>
            <?php while(have_rows('faq', $faqPage)): the_row(); ?>
                <?php if ($args['style'] == 'mini'): ?>
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
            <?php if ($args['style'] == 'mini'): ?>
                <a href="<?= home_url('/faq'); ?>" class="button button--secondary mt-3">View All</a>
            <?php endif; ?>
        <?php endif; ?>
    </div>
</div>

<script src="<?= get_template_directory_uri() . '/assets/js/accordion.js'; ?>"></script>