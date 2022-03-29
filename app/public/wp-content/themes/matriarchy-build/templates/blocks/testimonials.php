<?php
/** 
 * Block: Testimonials
 */

?>

<div class="testimonials">
    <div class="mx-auto d-flex flex-column col-12">
        <div class="testimonials__content row gx-0 d-flex p-0">
            <div class="testimonials__header d-flex mx-auto">
                <div class="testimonials__heading text-center">Testimonials</div>
                <div class="testimonials__arrows">
                    <button class="testimonials__prev prev" aria-label="Previous" type="button"></button>
                    <button class="testimonials__next next" aria-label="Next" type="button"></button>
                </div>
            </div>
            <div class="testimonials__slides">
            <?php if (have_rows('testimonial')): ?>
              <?php while (have_rows('testimonial')): the_row(); ?>
              <div class="testimonials__slide text-center">
                  <div class="testimonials__inner-slide">
                  <img class="testimonials__icon" src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/quotation.svg" alt="Testimonial quotation mark">

                <div class="testimonials__copy"><?= get_sub_field('copy'); ?></div>
                <h3 class="testimonials__name"><?= get_sub_field('name'); ?></h3>
            </div>
            </div>
              <?php endwhile; ?>
            <?php endif; ?>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    var $ = jQuery || $;
    $(document).ready(function() {
        $('.testimonials__slides').slick({
            prevArrow: $('.testimonials__prev'),
            nextArrow: $('.testimonials__next'),
            centerMode: true,
            infinite: true,
            variableWidth: true,
            slidesToShow: 1
        });
    });
</script>