<?php
/** 
 * Block: Pro Related Articles
 */

$articles = get_field('articles');
?>

<div class="related-articles related-articles--pro py-5">
    <div class="related-articles__wrapper mx-auto">
        <div class="related-articles__header d-flex mb-4">
            <div class="col-md-4">
                <img class="d-none d-md-block" src="<?php echo get_template_directory_uri(); ?>/assets/images/related-articles-title.svg">
                <img class="d-md-none" src="<?php echo get_template_directory_uri(); ?>/assets/images/related-articles-title-mobile.png">
            </div>
            <div class="col-md-8 d-flex justify-content-center align-items-center mb-borders">
                <h2 class="h1 related-articles__title px-3 mb-0 text-center has-white-color"><span><?= get_field('title') ?></span></h2>
            </div>
        </div>

        <div class="related-articles__posts row <?= count($articles) == 1 ? 'justify-content-end' : 'justify-content-center'; ?>">
            <?php foreach ($articles as $article):
                $permalink = get_permalink($article->ID); ?>
                <div class="article col-md-6 mt-3 mb-3 mb-md-5 <?= count($articles) == 1 ? 'col-md-8' : ''; ?>">
                    <div class="article__details col p-0 mb-borders">
                        <a class="article__image-container" href="<?= $permalink; ?>" style="background-image: url('<?= get_the_post_thumbnail_url($article->ID); ?>');"></a>
                        <a class="article__name" href="<?= $permalink; ?>" title="<?php printf( esc_attr__( 'Permalink to %s', 'matriarchy-build' ), the_title_attribute( 'echo=0' ) ); ?>" rel="bookmark"><div class="article__title p-2"><?= $article->post_title; ?></div></a>
                    </div>
                    <div class="entry-meta m-0">
                        <div class="row m-0">
                            <div class="article__date col-auto p-0 d-flex">
                                <span><?= get_the_time('m', $article); ?></span>
                                <span><?= get_the_time('j', $article); ?></span>
                                <span><?= get_the_time('y', $article); ?></span>
                            </div>
                            <div class="article__meta col-auto px-0 d-flex flex-column">
                                <span class="px-2"><?= the_category(' , ', '', $article->ID); ?></span>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
</div>