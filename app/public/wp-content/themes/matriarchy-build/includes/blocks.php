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
    endif;
});
