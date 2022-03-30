<?php
/** 
 * Block: How It Works
 */

$page = is_page('How It Works');

?>

<div class="how-it-works <?php if (!$page): ?>content-block <?php endif; ?>d-lg-flex flex-column">
    <div class="how-it-works__container <?php if ($page): ?>d-md-flex flex-column flex-lg-row<?php else: ?>d-lg-flex<?php endif; ?>">
        <div class="how-it-works__header row col-11 col-md-5 col-lg-4 gx-0">
            <div class="how-it-works__scafolding col-3 col-lg-6"></div>
            <div class="how-it-works__heading col-6 mb-borders d-flex justify-content-center align-items-center"><h2 class="m-0">How It Works</h2></div>
            <div class="how-it-works__arrows col-2 d-flex flex-column flex-lg-row<?php if($page): ?> d-none<?php endif; ?>">
                <button class="how-it-works__prev prev" aria-label="Previous" type="button"></button>
                <button class="how-it-works__next next" aria-label="Next" type="button"></button>
            </div>
        </div>
        <div class="how-it-works__content how-it-works__slides row gx-0">
            <div class="how-it-works__section mb-borders <?php if ($page): ?>d-flex<?php endif; ?>">
                <div class="how-it-works__top <?php if ($page): ?>d-md-flex col-md-6<?php else: ?>d-lg-flex<?php endif; ?>">
                    <div class="how-it-works__step">Step 1 <img class="d-none <?php if ($page): ?>d-md-inline<?php else: ?>d-lg-inline<?php endif; ?>" src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/arrow_blue_medium.svg" alt="blue arrow"/></div>
                    <div class="how-it-works__title h2 mb-0">
                        <span>Search</span>
                        <div class="how-it-works__scafolding d-none <?php if ($page): ?>d-md-block<?php endif;?> col-1"></div>  
                    </div>
                </div>
                <div class="how-it-works__description <?php if ($page): ?>flex-column<?php endif; ?>">
                    <span>Search our database of Pros based on your project type.</span>
                    <?php if ($page): ?>
                        <p class="how-it-works__blurb">Curabitur commodo molestie ante. Integer sagittis felis ullamcorper velit euismod, et vulputate magna viverra. Mauris a cursus dolor. Suspendisse suscipit molestie massa, vitae aliquet nisi hendrerit ornare. Nulla tempor posuere augue, nec faucibus orci faucibus pharetra.</p>
                    <?php endif; ?>
                    <div class="how-it-works__scafolding d-none <?php if (!$page): ?>d-lg-block<?php endif;?> col-1"></div>
                </div>
            </div>
            <div class="how-it-works__section mb-borders <?php if ($page): ?>d-flex<?php endif; ?>">
                <div class="how-it-works__top <?php if ($page): ?>d-md-flex col-md-6<?php else: ?>d-lg-flex<?php endif; ?>">
                    <div class="how-it-works__step">Step 1 <img class="d-none <?php if ($page): ?>d-md-inline<?php else: ?>d-lg-inline<?php endif; ?>" src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/arrow_blue_medium.svg" alt="blue arrow"/></div>
                    <div class="how-it-works__title h2 mb-0">
                        <span>Build</span>
                        <div class="how-it-works__scafolding d-none <?php if ($page): ?>d-md-block<?php endif;?> col-1"></div>  
                    </div>
                </div>
                <div class="how-it-works__description <?php if ($page): ?>flex-column<?php endif; ?>">
                    <span>Search our database of Pros based on your project type.</span>
                    <?php if ($page): ?>
                        <p class="how-it-works__blurb">Curabitur commodo molestie ante. Integer sagittis felis ullamcorper velit euismod, et vulputate magna viverra. Mauris a cursus dolor. Suspendisse suscipit molestie massa, vitae aliquet nisi hendrerit ornare. Nulla tempor posuere augue, nec faucibus orci faucibus pharetra.</p>
                    <?php endif; ?>
                    <div class="how-it-works__scafolding d-none <?php if (!$page): ?>d-lg-block<?php endif;?> col-1"></div>
                </div>
            </div>
        </div>
    </div>
</div>

<?php if (!$page): ?>
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
<?php endif; ?>