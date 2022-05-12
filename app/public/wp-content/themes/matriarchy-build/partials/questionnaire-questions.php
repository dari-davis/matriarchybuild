<?php $order_id = $args['orderId']; ?>

<form class="questionnaire px-4 py-5" method="post">
    <?php $showQuestions = true; ?>
    <?php $order = wc_get_order($order_id); ?>
    <?php function submitQuestionnaire($order_id) {
        echo "Your questionnarie has been successfully submitted!";
        $showQuestions = false;
        $order = wc_get_order($order_id);
        $order->update_meta_data('answer1', $_POST["question1"]);
        $order->update_meta_data('answer2', $_POST["question2"]);
        $order->update_meta_data('answer3', $_POST["question3"]);
        $order->update_meta_data('answer4', $_POST["question4"]);
        $order->update_meta_data('answer5', $_POST["question5"]);
        $order->update_meta_data('answer6', $_POST["question6"]);
        $order->save();
    }
    if (isset($_POST['submit'])) { submitQuestionnaire($order_id); } ?>

    <?php if( empty(get_post_meta($order_id, 'answer1'))): ?>
        <div class="questionnaire__questions">
            <div class="form-group row py-3 m-0">
                <label for="question1" class="questionnaire__label col-sm-4 col-form-label p-0">What project are you looking to tackle?</label>
                <div class="col-sm-8 ps-md-4 px-0 py-2">
                    <textarea class="form-control" rows="3" id="question1" name="question1"></textarea>
                </div>
            </div>
            <div class="form-group row py-3 m-0">
                <label for="question2" class="questionnaire__label col-sm-4 col-form-label p-0">What are your goals for your session?</label>
                <div class="col-sm-8 ps-md-4 px-0 py-2">
                    <textarea class="form-control" rows="3" id="question2" name="question2"></textarea>
                </div>
            </div>
            <div class="form-group row py-3 m-0">
                <label for="question3" class="questionnaire__label col-sm-4 col-form-label p-0">Are there any tools, parts, materials, or obstacles specific to your project that you want to share with your Pro in advance of the session? If so, please do so here.</label>
                <div class="col-sm-8 ps-md-4 px-0 py-2">
                    <textarea class="form-control" rows="3" id="question3" name="question3"></textarea>
                </div>
            </div>
            <div class="form-group row py-3 m-0">
                <label for="question4" class="questionnaire__label col-sm-4 col-form-label p-0">On a scale of 1 to 5 how would you rate your experience level? (For example, 1: I want to hang shelves but I’ve never used a drill; 5: I want to do a full kitchen remodel and I’ve just completed a bathroom remodel.)</label>
                <div class="col-sm-8 ps-md-4 px-0 py-2">
                    <textarea class="form-control" rows="3" id="question4" name="question4"></textarea>
                </div>
            </div>
            <div class="form-group row py-3 m-0">
                <label for="question5" class="questionnaire__label col-sm-4 col-form-label p-0">Do you have any questions you’d like your Pro to be prepared to address in your session? Are there any additional notes for your Pro?</label>
                <div class="col-sm-8 ps-md-4 px-0 py-2">
                    <textarea class="form-control" rows="3" id="question5" name="question5"></textarea>
                </div>
            </div>
            <div class="form-group row py-3">
                <label for="question6" class="questionnaire__label col-sm-4 col-form-label p-0">To share large files please list any relevant links for your Pro (Example: Dropbox, Google Doc, Pinterest Board.)</label>
                <div class="col-sm-8 ps-md-4 px-0 py-2">
                    <textarea class="form-control" rows="3" id="question6" name="question6"></textarea>
                </div>
            </div>
            <div class="d-flex p-3"><input type="submit" value="Save" name="submit" class="w-auto button alt"></div>
        </div>
    <?php endif; ?>
</form>