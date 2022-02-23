<?php

// Taxonomies

add_action('init', function() {
  register_taxonomy('pros', ['pro'], array(
    'labels' => array(
      'name' => __('Pro Trade'),
      'sinular_name' => __('Pro Trade'),
      'search_items' => __('Serach Pro Trades'),
      'all_items' => __('All Pro Trades'),
      'parent_item' => __('Parent Pro Trades'),
      'parent_item_colon' => __('Parent Pro Trades:'),
      'edit_item' => __('Edit Pro Trade'),
      'update_item' => __('Update Pro Trade'),
      'add_new_item' => __('Add New Pro Trade'),
      'new_item_name' => __('New Pro Trade Name'),
      'menu_name' => __('Pro Trades'),
      'not_found' => __('No Pro Trades found.'),
      'not_found_in_trash' => __('No Pro Trades found in Trash.')
    ),
    'hierarchial' => true,
    'show_in_rest' => true
  ));
});
