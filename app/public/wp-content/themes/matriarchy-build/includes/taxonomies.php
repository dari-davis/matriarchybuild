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

  register_taxonomy('regions', ['pro'], array(
    'labels' => array(
      'name' => __('Regions'),
      'sinular_name' => __('Region'),
      'search_items' => __('Serach Regions'),
      'all_items' => __('All Regions'),
      'parent_item' => __('Parent Regions'),
      'parent_item_colon' => __('Parent Regions:'),
      'edit_item' => __('Edit Region'),
      'update_item' => __('Update Region'),
      'add_new_item' => __('Add New Region'),
      'new_item_name' => __('New Region Name'),
      'menu_name' => __('Regions'),
      'not_found' => __('No Regions found.'),
      'not_found_in_trash' => __('No Regions found in Trash.')
    ),
    'hierarchial' => true,
    'show_in_rest' => true
  ));

  register_taxonomy('projects', ['pro'], array(
    'labels' => array(
      'name' => __('Project Types'),
      'sinular_name' => __('Project Type'),
      'search_items' => __('Serach Project Types'),
      'all_items' => __('All Project Types'),
      'parent_item' => __('Parent Project Types'),
      'parent_item_colon' => __('Parent Project Types:'),
      'edit_item' => __('Edit Project Type'),
      'update_item' => __('Update Project Type'),
      'add_new_item' => __('Add New Project Type'),
      'new_item_name' => __('New Project Type Name'),
      'menu_name' => __('Project Types'),
      'not_found' => __('No Project Types found.'),
      'not_found_in_trash' => __('No Project Types found in Trash.')
    ),
    'hierarchial' => true,
    'show_in_rest' => true
  ));
});
