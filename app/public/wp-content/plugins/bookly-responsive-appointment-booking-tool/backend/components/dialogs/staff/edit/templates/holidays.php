<?php if (!defined('ABSPATH')) exit; // Exit if accessed directly ?>
<div class="bookly-js-holidays-nav text-center">
    <div class="btn-group btn-group-lg d-none" role="group">
        <button class="btn btn-default bookly-js-jCalBtn" data-trigger=".jCal .left" type="button">
            <i class="fas fa-fw fa-angle-left"></i>
        </button>
        <button class="btn btn-default jcal_year" type="button" disabled="disabled"></button>
        <button class="btn btn-default bookly-js-jCalBtn" data-trigger=".jCal .right" type="button">
            <i class="fas fa-fw fa-angle-right"></i>
        </button>
    </div>
</div>
<div class="bookly-js-holidays__arrows">
    <button class="prev" aria-label="Previous" type="button"></button>
    <button class="next" aria-label="Next" type="button"></button>
</div>
<div class="bookly-js-holidays jCal-wrap slides"></div>

<?php if (!is_admin()): ?>
<script type="text/javascript">
    var $ = jQuery || $;
    $(document).ready(function() {
    $('.slides').slick({
        prevArrow: $('.prev'),
        nextArrow: $('.next')
    });
    });
</script>
<?php endif; ?>