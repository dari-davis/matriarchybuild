<?php
/** 
 * Block: Pro Application Callout
 */

?>

<div class="pro-application callout">
    <div class="callout__wrapper mx-auto d-flex flex-column flex-md-row">
        <div class="row gx-0">
            <div class="d-flex col-md-4">
                <div class="callout__scafolding col-3 d-md-none"></div>
                <div class="col-9 col-md-12 callout__heading mb-borders mb-borders--pink"><div class="h1 mb-0 pt-3 pb-2">Apply To Be A Pro</div></div>
            </div>
            <div class="col callout__content mb-borders mb-borders--pink">
                <div class="callout__copy"><?= get_field('content'); ?></div>
                <a href="/apply" class="button d-flex justify-content-center align-items-center">Learn More</a>
            </div>
            <div class="callout__scafolding col-md-2 d-none d-lg-block"></div>
        </div>
    </div>
</div>