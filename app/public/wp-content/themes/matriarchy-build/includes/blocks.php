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
            'name' => 'diy-inspiration',
            'title' => __('DIY & Inspiration'),
            'description' => __('Displays an article card for a selected set of posts.'),
            'render_template' => './templates/blocks/diy-inspiration.php',
            'category' => 'layout',
            'icon' => 'grid-view',
            'keywords' => array('diy', 'inspiration', 'post')
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

        acf_register_block_type(array(
            'name' => 'hero',
            'title' => __('Hero'),
            'description' => __('Displays a hero image with descriptive text and buttons.'),
            'render_template' => './templates/blocks/hero.php',
            'category' => 'layout',
            'icon' => 'grid-view',
            'keywords' => array('hero', 'banner')
        ));

        acf_register_block_type(array(
            'name' => 'diy-carousel',
            'title' => __('DIY Carousel'),
            'description' => __('Displays a carousel of diy & inspiration posts.'),
            'render_template' => './templates/blocks/diy-carousel.php',
            'category' => 'layout',
            'icon' => 'grid-view',
            'keywords' => array('diy', 'articles', 'carousel')
        ));

        acf_register_block_type(array(
            'name' => 'testimonials',
            'title' => __('Testimonials'),
            'description' => __('Displays a carousel of testimonials.'),
            'render_template' => './templates/blocks/testimonials.php',
            'category' => 'layout',
            'icon' => 'slides',
            'keywords' => array('testimonials', 'carousel')
        ));

        acf_register_block_type(array(
            'name' => 'how-it-works',
            'title' => __('How It Works'),
            'description' => __('Displays a step by step within a carousel.'),
            'render_template' => './templates/blocks/how-it-works.php',
            'category' => 'content',
            'icon', 'slides',
            'keywords' => array('how it works', 'carousel', 'steps')
        ));
    endif;
});
