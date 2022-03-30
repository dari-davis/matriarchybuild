<?php
/** 
 * Block: Featured Pros
 */

global $wpdb;
$staff = Bookly\Lib\Entities\Staff::query()->where( 'wp_user_id', get_field('pro_user') )->findOne();
$services = $wpdb->get_results('SELECT * FROM wp_bookly_staff_services WHERE staff_id="'.$staff->id.'";');
?>

<?php
    function related_posts_by_taxonomy( $post_id, $taxonomy, $args=array() ) {
    $query = new WP_Query();
    $terms = wp_get_object_terms( $post_id, $taxonomy );

    // Make sure we have terms from the current post
    if ( count( $terms ) ) {
        $post_ids = get_objects_in_term( $terms[0]->term_id, $taxonomy );
        $post = get_post( $post_id );
        $post_type = get_post_type( $post );        

        $args = wp_parse_args( $args, array(
            'post_type' => $type,
            'post__in' => $post_ids,
            'taxonomy' => $taxonomy,
            'term' => $terms[0]->slug,
            'post__not_in' => [$post_id],
            'posts_per_page' => 5

        ) );
        $query = new WP_Query( $args );
    }

    // Return our results in query form
    return $query;
} ?>

<div class="featured-pros py-5 mx-auto">
    <div class="featured-pros__wrapper mx-auto d-flex">
        <div class="featured-pros__image mb-4 mb-lg-0 mx-auto mx-md-0">
            <img class="image-desktop" src="<?php echo get_template_directory_uri(); ?>/assets/images/related-pros-big.svg" alt="Related Pros heading">
            <img class="image-mobile" src="<?php echo get_template_directory_uri(); ?>/assets/images/related-pros-small.svg" alt="Related Pros heading">
        </div>
        <div class="featured-pros__posts row ms-lg-3 gx-3">
            <?php $related =  related_posts_by_taxonomy( $post->ID, 'pros' ); ?>
            <?php while ( $related->have_posts() ): $related->the_post(); ?>
                <?php $postId = $post->ID;
                $permalink = get_permalink($postId); ?>
                <div class="col-md-6 col-xl-4 article d-flex mb-3 mb-lg-0 mt-lg-3">
                    <div class="col-6 mb-borders mb-borders--green">
                        <a class="article__image-container d-flex" href="<?= $permalink; ?>" style="background-image: url('<?= get_the_post_thumbnail_url($postId, 'medium'); ?>');" aria-label="<?= $post->post_title; ?>"></a>
                    </div>
                    <div class="featured-pros__details col-6 has-white-background-color mb-borders mb-borders--green">
                        <div class="featured-pros__top">
                            <a class="article__name" href="<?= $permalink; ?>" title="<?php printf( esc_attr__( 'Permalink to %s', 'matriarchy-build' ), the_title_attribute( 'echo=0' ) ); ?>" rel="bookmark">
                                <div class="article__title">
                                    <?php if (have_rows('display_name', $postId)): ?>
                                        <?php while (have_rows('display_name', $postId)): the_row(); ?>
                                            <?php if (get_sub_field('line_1', $postId)): ?>
                                                <?= get_sub_field('line_1', $postId); ?><br/><?= get_sub_field('line_2', $postId); ?></h1>
                                            <?php else: ?>
                                                <?= $post->post_title; ?>
                                            <?php endif; ?>
                                        <?php endwhile; ?>
                                    <?php endif; ?>
                                </div>
                            </a>
                            <div class="article__terms">
                                <?php $terms = get_the_terms($post, 'pros'); $categories = []; ?>
                                <?php foreach ($terms as $term): ?>
                                    <?php $categories[] = $term->name; unset($term); ?>
                                <?php endforeach; ?>
                                <?= implode(', ', $categories); ?>
                            </div>
                        </div>
                        <div class="featured-pros__bottom">
                            <a class="featured-pros__button d-flex justify-content-center text-center <?php if (!empty($services)): ?>bookable<?php endif; ?>" href="<?php the_permalink(); ?>" title="<?= $title_tag; ?>" aria-label="Pro">
                                <?php if (!empty($services)): ?>
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/icon-bookable.svg" alt="Pros bookable card icon"/>
                                <?php else: ?>
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/icon-not-bookable.svg" alt="Pros non-bookable card icon"/>
                                <?php endif; ?>
                            </a>
                        </div>
                    </div>
                </div>
            <?php endwhile; ?>
            <div class="featured-pros__view-all col-md-6 col-xl-4 article d-flex mb-3 mb-lg-0 mt-lg-3">
                <div class="col-12 mb-borders mb-borders--green"><a href="/pro">View All Pros</a></div>
            </div>
        </div>
    </div>
</div>