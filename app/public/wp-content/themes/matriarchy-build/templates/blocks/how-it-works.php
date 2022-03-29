<?php
/** 
 * Block: How It Works
 */

?>

<div class="how-it-works d-lg-flex flex-column">
    <div class="how-it-works__container d-lg-flex">
        <div class="how-it-works__header row col-11 col-md-5 col-lg-4 gx-0">
            <div class="how-it-works__scafolding col-3 col-lg-6"></div>
            <div class="how-it-works__heading col-6 mb-borders d-flex justify-content-center align-items-center"><h2 class="m-0">How It Works</h2></div>
            <div class="how-it-works__arrows col-2 d-flex flex-column flex-lg-row">
                <button class="how-it-works__prev prev" aria-label="Previous" type="button"></button>
                <button class="how-it-works__next next" aria-label="Next" type="button"></button>
            </div>
        </div>
        <div class="how-it-works__content how-it-works__slides row gx-0">
            <div class="how-it-works__section mb-borders">
                <div class="how-it-works__top d-lg-flex">
                    <div class="how-it-works__step">Step 1 <img class="d-none d-lg-inline" src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/arrow_blue_medium.svg" alt="blue arrow"/></div>
                    <div class="how-it-works__title h2 mb-0">Search</div>
                </div>
                <div class="how-it-works__description">
                    <span>Search our database of Pros based on your project type.</span>
                    <div class="how-it-works__scafolding d-none d-lg-block col-1"></div>
                </div>
            </div>
            <div class="how-it-works__section mb-borders">
                <div class="how-it-works__top d-lg-flex">
                    <div class="how-it-works__step">Step 2 <img class="d-none d-lg-inline" src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/arrow_blue_medium.svg" alt="blue arrow"/></div>
                    <div class="how-it-works__title h2 mb-0">Build</div>
                </div>
                <div class="how-it-works__description">
                    <span>Search our database of Pros based on your project type</span>
                    <div class="how-it-works__scafolding d-none d-lg-block col-1"></div>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    var $ = jQuery || $;
    $(document).ready(function() {
        $('.how-it-works__slides').slick({
            prevArrow: $('.how-it-works__prev'),
            nextArrow: $('.how-it-works__next'),
            infinite: true,
            variableWidth: true,
            slidesToShow: 1
        });
    });
</script>