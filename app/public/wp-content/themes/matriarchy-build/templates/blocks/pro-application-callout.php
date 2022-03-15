<?php
/** 
 * Block: Pro Application Callout
 */

?>

<div class="pro-application callout">
    <div class="content-blocks__wrapper mx-auto d-flex flex-column flex-md-row">
        <div class="row gx-0">
            <div class="d-flex col-md-4">
                <img class="col-3 d-md-none" src="<?php echo get_template_directory_uri(); ?>/assets/images/scafolding-callout-mobile.png">
                <div class="col-9 col-md-12 callout__heading mb-borders mb-borders--pink"><div class="h1 mb-0">Apply To Be A Pro</div></div>
            </div>
            <div class="col callout__content mb-borders mb-borders--pink">
                <div class="callout__copy"><?= get_field('content'); ?></div>
                <a href="/apply" class="button">Learn More</a>
            </div>
            <img class="col-md-2 d-none d-lg-block" src="<?php echo get_template_directory_uri(); ?>/assets/images/scafolding-callout.png">
        </div>
    </div>
</div>