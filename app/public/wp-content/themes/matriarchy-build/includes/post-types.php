<?php

// Custom Post Types

add_action('init', function() {
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
      'has_archive' => false,
      'supports' => array('title', 'thumbnail', 'excerpt', 'editor'),
      'menu_icon' => 'dashicons-admin-generic',
      'show_in_rest' => true,
    )
  );
});
