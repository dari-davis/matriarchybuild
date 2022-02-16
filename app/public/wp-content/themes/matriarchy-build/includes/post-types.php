<?php

// Post Types

add_action('init', function() {
    register_taxonomy(
        'project_types',  // The name of the taxonomy. Name should be in slug form (must not contain capital letters or spaces).
        'pros',             // post type name
        array(
            'hierarchical' => true,
            'label' => 'Project Types', // display name
            'query_var' => true,
            'rewrite' => array(
                'slug' => 'pros',    // This controls the base slug that will display before each term
                'with_front' => false  // Don't display the category base before
            )
        )
    );

    register_post_type(
        'pro',
        array(
            'labels' => array(
                'name' => __('Pros'),
                'singular_name' => __('Pro'),
                'add_new' => __('Add New'),
                'add_new_item' => __('Add New Pro'),
                'edit' => __('Edit'),
                'edit_item' => __('Edit Pro'),
                'new_item' => __('New Pro'),
                'view' => __('View Pro'),
                'search_items' => __('Search Pros'),
                'all_items' => __('All Pros'),
                'not_found' => __('No Pros Found.'),
                'not_found_in_trash' => __('No Pros found in Trash.')
            ),
            'public' => true,
            'has_archive' => true,
            'supports' => array('title', 'thumbnail', 'excerpt', 'editor'),
            'menu_icon' => 'dashicons-admin-users',
            'show_in_rest' => true,
            'taxonomies' => array( 'project_types'),
        )
    );
});
