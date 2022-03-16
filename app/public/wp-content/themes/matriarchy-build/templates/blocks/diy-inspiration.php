<?php
/** 
 * Block: DIY & Inspiration
 */

$articles = get_field('posts');
?>

<div class="diy-inspiration py-5">
    <div class="diy-inspiration__wrapper mx-auto">
        <div class="diy-inspiration__header d-flex mb-4">
            <div class="diy-inspiration__left col-md-6 col-lg-7 d-flex justify-content-center align-items-center mb-borders">
                <h2 class="h1 diy-inspiration__title px-3 mb-0 text-center"><span>DIY + Inspiration</span></h2>
            </div>
            <div class="diy-inspiration__right col-md-6 col-lg-5">
                <div class="diy-inspiration__scafolding d-none d-md-block"></div>
                <a class="d-flex button" href="/diy-inspiration">View All Posts</a>

            </div>
        </div>

        <div class="diy-inspiration__posts row <?= count($articles) == 1 ? 'justify-content-end' : 'justify-content-center'; ?>">
            <?php foreach ($articles as $article):
                $permalink = get_permalink($article->ID); ?>
                <div class="article col-md-6 <?php if (count($articles) >= 3): ?>col-lg-4 <?php endif;?>mt-3 mb-3 mb-md-5 <?= count($articles) == 1 ? 'col-md-8' : ''; ?>">
                    <div class="article__details col p-0 mb-borders">
                        <a class="article__image-container" href="<?= $permalink; ?>" style="background-image: url('<?= get_the_post_thumbnail_url($article->ID); ?>');"></a>
                        <a class="article__name" href="<?= $permalink; ?>" title="<?php printf( esc_attr__( 'Permalink to %s', 'matriarchy-build' ), the_title_attribute( 'echo=0' ) ); ?>" rel="bookmark"><div class="article__title"><?= $article->post_title; ?></div></a>
                    </div>
                    <div class="entry-meta m-0">
                        <div class="row m-0">
                            <div class="article__date col-auto p-0 d-flex">
                                <span><?= get_the_time('m', $article); ?></span>
                                <span><?= get_the_time('j', $article); ?></span>
                                <span><?= get_the_time('y', $article); ?></span>
                            </div>
                            <div class="article__meta col-auto px-0 d-flex flex-column">
                                <span class="article__author px-2">by <?= get_the_author(); ?></span>
                                <span class="px-2"><?= the_category(' , ', '', $article->ID); ?></span>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
</div>