<?php
/** 
 * Block: Featured Pros
 */

$articles = get_field('pros');
?>

<div class="featured-pros py-5">
    <div class="featured-pros__wrapper mx-auto d-flex">
        <div class="featured-pros__image mb-4 mb-lg-0 mx-auto mx-md-0">
            <img class="d-none d-lg-block" src="<?php echo get_template_directory_uri(); ?>/assets/images/scafolding-featured-pros.png">
            <img class="d-lg-none" src="<?php echo get_template_directory_uri(); ?>/assets/images/scafolding-featured-pros-mobile.png">
        </div>
        <div class="featured-pros__posts row mx-0 ms-lg-3">
            <?php foreach ($articles as $article):
                $permalink = get_permalink($article->ID); ?>
                <div class="col-md-6 col-lg-4 article d-flex mb-3 mb-lg-0 mt-lg-3">
                    <div class="col-6 mb-borders mb-borders--green">
                        <a class="article__image-container d-flex" href="<?= $permalink; ?>" style="background-image: url('<?= get_the_post_thumbnail_url($article->ID, 'medium'); ?>');"></a>
                    </div>
                    <div class="featured-pros__details col-6 has-white-background-color mb-borders mb-borders--green">
                        <div class="featured-pros__top">
                            <a class="article__name" href="<?= $permalink; ?>" title="<?php printf( esc_attr__( 'Permalink to %s', 'matriarchy-build' ), the_title_attribute( 'echo=0' ) ); ?>" rel="bookmark">
                                <div class="article__title"><?= $article->post_title; ?></div>
                            </a>
                            <div class="article__terms">
                                <?php $terms = get_the_terms($article, 'pros'); $categories = []; ?>
                                <?php foreach ($terms as $term): ?>
                                    <?php $categories[] = $term->name; unset($term); ?>
                                <?php endforeach; ?>
                                <?= implode(', ', $categories); ?>
                            </div>
                        </div>
                        <div class="featured-pros__bottom"></div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
</div>