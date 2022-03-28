<?php $order_id = $args['orderId']; ?>

<div class="questionnaire px-4 py-5">
    <div class="form-group row py-3 m-0">
        <div class="questionnaire__label col-sm-4 col-form-label p-0">What project are you looking to tackle?</div>
        <div class=" col-sm-8 ps-md-4 px-0 py-2">
            <p class="questionnaire__answer"><?= get_post_meta($order_id, 'answer1', true); ?></p>
        </div>
    </div>
    <div class="form-group row py-3 m-0">
        <div class="questionnaire__label col-sm-4 col-form-label p-0">What are your goals for your session?</div>
        <div class="col-sm-8 ps-md-4 px-0 py-2">
            <p class="questionnaire__answer"><?= get_post_meta($order_id, 'answer2', true); ?></p>
        </div>
    </div>
    <div class="form-group row py-3 m-0">
        <div class="questionnaire__label col-sm-4 col-form-label p-0">Are there any tools, parts, materials, or obstacles specific to your project that you want to share with your Pro in advance of the session? If so, please do so here.</div>
        <div class="col-sm-8 ps-md-4 px-0 py-2">
            <p class="questionnaire__answer"><?= get_post_meta($order_id, 'answer3', true); ?></p>
        </div>
    </div>
    <div class="form-group row py-3 m-0">
        <div class="questionnaire__label col-sm-4 col-form-label p-0">On a scale of 1 to 5 how would you rate your experience level? (For example, 1: I want to hang shelves but I’ve never used a drill; 5: I want to do a full kitchen remodel and I’ve just completed a bathroom remodel.)</div>
        <div class="col-sm-8 ps-md-4 px-0 py-2">
            <p class="questionnaire__answer"><?= get_post_meta($order_id, 'answer4', true); ?></p>
        </div>
    </div>
    <div class="form-group row py-3 m-0">
        <div class="questionnaire__label col-sm-4 col-form-label p-0">Do you have any questions you’d like your Pro to be prepared to address in your session? Are there any additional notes for your Pro?</div>
        <div class="col-sm-8 ps-md-4 px-0 py-2">
            <p class="questionnaire__answer"><?= get_post_meta($order_id, 'answer5', true); ?></p>
        </div>
    </div>
</div>