<?php

// Taxonomies

add_action('init', function() {
  register_taxonomy('pros', ['pro'], array(
    'labels' => array(
      'name' => __('Pro Category'),
      'sinular_name' => __('Pro Category'),
      'search_items' => __('Serach Pro Categories'),
      'all_items' => __('All Pro Categories'),
      'parent_item' => __('Parent Pro Categories'),
      'parent_item_colon' => __('Parent Pro Categories:'),
      'edit_item' => __('Edit Pro Category'),
      'update_item' => __('Update Pro Category'),
      'add_new_item' => __('Add New Pro Category'),
      'new_item_name' => __('New Pro Category Name'),
      'menu_name' => __('Pro Categories'),
      'not_found' => __('No Pro Categories found.'),
      'not_found_in_trash' => __('No Pro Categories found in Trash.')
    ),
    'hierarchial' => true,
    'show_in_rest' => true
  ));
});
