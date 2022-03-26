<div class="article">
    <div class="article__details col p-0 mb-borders">
        <?php if (has_post_thumbnail()): ?>
            <a class="article__image-container" href="<?php the_permalink(); ?>" style="background-image: url('<?= get_the_post_thumbnail_url(); ?>');" aria-label="<?= the_title(); ?>"></a>
        <?php else: ?>
            <a class="article__image-container" href="<?php the_permalink(); ?>" aria-label="<?php the_title(); ?>"><div class="article__image"></div></a>
        <?php endif; ?>
        <a class="article__name" href="<?php the_permalink(); ?>" title="<?php printf( esc_attr__( 'Permalink to %s', 'matriarchy-build' ), the_title_attribute( 'echo=0' ) ); ?>" rel="bookmark" aria-label="<?php the_title(); ?>"><div class="article__title p-2"><?= the_title(); ?></div></a>
    </div>
    <?php if (!is_search()): ?>
        <div class="entry-meta m-0">
            <div class="row m-0">
                <div class="article__date col-auto p-0 d-flex">
                    <span><?= the_time('m'); ?></span>
                    <span><?= the_time('j'); ?></span>
                    <span><?= the_time('y'); ?></span>
                </div>
                <div class="article__meta col-auto px-0 d-flex flex-column">
                    <span class="px-2">by <?= get_the_author(); ?></span>
                    <span class="px-2"><?= the_category(' , '); ?></span>
                </div>
            </div>
        </div><!-- /.entry-meta -->
    <?php endif; ?>
</div>