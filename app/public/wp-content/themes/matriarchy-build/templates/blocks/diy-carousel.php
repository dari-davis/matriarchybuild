<?php
/** 
 * Block: DIY Carousel
 */

$articles = get_field('posts');
?>

<div class="diy-carousel <?php if (count($articles) > 1): ?>diy-carousel--slider <?php endif; ?>py-5" <?php if (get_field('background_image')): ?>style="background-image: url('<?= get_field('background_image'); ?>');"<?php endif; ?>>
    <div class="content-blocks__wrapper mx-auto d-flex flex-column col-12">
        <div class="diy-carousel__content row gx-0 d-flex">
            <div class="col-md-2 diy-carousel__scafolding diy-carousel__scafolding--left d-none d-md-block"></div>
            <div class="col-md-4 diy-carousel__articles mb-borders">
                <div class="diy-carousel__arrows">
                    <button class="prev" aria-label="Previous" type="button"></button>
                    <button class="next" aria-label="Next" type="button"></button>
                </div>
                <div class="diy-carousel__slides">
                    <?php foreach ($articles as $article):
                        $permalink = get_permalink($article->ID); ?>
                        <div class="diy-carousel__post has-white-background-color">
                            <a class="diy-carousel__name" href="<?= $permalink; ?>" title="<?php printf( esc_attr__( 'Permalink to %s', 'matriarchy-build' ), the_title_attribute( 'echo=0' ) ); ?>" rel="bookmark">
                                <div class="diy-carousel__title"><?= $article->post_title; ?></div>
                            </a>
                            <a href="<?= $permalink; ?>" class="diy-carousel__button button">Learn More</a>
                        </div>
                    <?php endforeach; ?>
                </div>
            </div>
            <div class="col-md diy-carousel__scafolding diy-carousel__scafolding--right d-none d-md-block"></div>
        </div>
    </div>
</div>

<script type="text/javascript">
    var $ = jQuery || $;
    $(document).ready(function() {
    $('.diy-carousel__slides').slick({
        prevArrow: $('.prev'),
        nextArrow: $('.next')
    });
    });
</script>