<?php

// Blocks

add_action('acf/init', function() {
    if (function_exists('acf_register_block_type')):
        acf_register_block_type(array(
            'name' => 'pro-related-articles',
            'title' => __('Pro Related Articles'),
            'description' => __('Displays an article card for articles related to a specific Pro.'),
            'render_template' => './templates/blocks/pro-related-articles.php',
            'category' => 'layout',
            'icon' => 'grid-view',
            'keywords' => array('pro', 'article')
        ));

        acf_register_block_type(array(
            'name' => 'featured-pros',
            'title' => __('Featured Pros'),
            'description' => __('Shows a post card for featured Pros.'),
            'render_template' => './templates/blocks/featured-pros.php',
            'category' => 'layout',
            'icon' => 'grid-view',
            'keywords' => array('pros', 'pro', 'cards')
        ));

        acf_register_block_type(array(
            'name' => 'side-by-side',
            'title' => __('Side by Side'),
            'description' => __('Displays a set of instructions.'),
            'render_template' => './templates/blocks/side-by-side.php',
            'category' => 'layout',
            'icon' => 'grid-view',
            'keywords' => array('steps', 'instructions', 'side by side')
        ));

        acf_register_block_type(array(
            'name' => 'faq',
            'title' => __('FAQ'),
            'description' => __('Displays a full list of FAQs within an accordion.'),
            'render_template' => './templates/blocks/faq.php',
            'enqueue_script' => get_template_directory_uri() . '/assets/js/accordion.js',
            'category' => 'layout',
            'icon' => 'grid-view',
            'keywords' => array('faq', 'q and a', 'accordion')
        ));

        acf_register_block_type(array(
            'name' => 'pro-application-callout',
            'title' => __('Pro Application Callout'),
            'description' => __('Displays a callout for the Pro application.'),
            'render_template' => './templates/blocks/pro-application-callout.php',
            'category' => 'layout',
            'icon' => 'grid-view',
            'keywords' => array('pro', 'application', 'apply to pro')
        ));

        acf_register_block_type(array(
            'name' => 'newsletter',
            'title' => __('Newsletter Callout'),
            'description' => __('Displays a callout for the newsletter signup.'),
            'render_template' => './templates/blocks/newsletter-callout.php',
            'category' => 'layout',
            'icon' => 'grid-view',
            'keywords' => array('newsletter', 'sign up')
        ));
    endif;
});
