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
            'name' => 'step-by-step',
            'title' => __('Step by Step'),
            'description' => __('Display a set of instructions'),
            'render_template' => './templates/blocks/step-by-step.php',
            'category' => 'layout',
            'icon' => 'grid-view',
            'keywords' => array('steps', 'instructions', 'step by step')
        ));
    endif;
});
