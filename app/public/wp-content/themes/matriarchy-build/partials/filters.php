<div class="filters row gx-0 m-0 mb-3 mb-md-5">
    <div class="filters__wrapper d-flex p-0">
        <p class="filters__heading me-md-3">Filter <img class="d-md-none" src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/arrow_blue.svg"></p>

        <form method="GET" id="newfilters">

        <?php $terms = get_terms([ 'taxonomy' => 'pros', 'hide_empty' => false ]); ?>

            <div class="filters__filter me-md-2 mb-3 mb-md-0">
                <div class="filters__select selectBox" onclick="showCheckboxes()">
                    <select class="px-2">
                        <option>Trade</option>
                    </select>
                    <div class="overSelect"></div>
                </div>
                <div id="checkboxes">
                    <?php foreach ($terms as $term) : ?>
                        <label class="d-flex">
                        <input class="invisible example" type="checkbox" name="pros[]" value="<?php echo $term->slug; ?>" <?php checked((isset($_GET['pros']) && in_array($term->slug, $_GET['pros']))) ?> />
                        <?php echo $term->name; ?>
                    </label>
                    <?php endforeach; ?>
                </div>
            </div>

            <?php foreach ($terms as $term) : ?>
                <label><input class="example2" type="checkbox" name="pros[]" value="<?php echo $term->slug; ?>" <?php checked((isset($_GET['pros']) && in_array($term->slug, $_GET['pros']))) ?> /><?php echo $term->name; ?></label>
            <?php endforeach; ?>

            <button class="invisible" type="submit">Apply</button>
        </form>
    </div>
</div>

<script>
    console.log('here');


    var expanded = false;

    function showCheckboxes() {
        var checkboxes = document.getElementById("checkboxes");
        if (!expanded) {
            checkboxes.style.display = "block";
            expanded = true;
        } else {
            checkboxes.style.display = "none";
            expanded = false;
        }
    }

    
    var $ = jQuery || $;
    $('input.example').on('change', function () {
        $('input.example2').not(this).prop('checked', false);
    });

    $('input.example2').on('change', function () {
        $('input.example').not(this).prop('checked', false);
    });

    $('#newfilters').on('change', "input:checkbox", function () {
        $('#newfilters').submit();
    });
</script>


<style>
    .multiselect {
        width: 200px;
    }

    .selectBox {
        position: relative;
    }

    .selectBox select {
        width: 100%;
        font-weight: bold;
    }

    .overSelect {
        position: absolute;
        left: 0;
        right: 0;
        top: 0;
        bottom: 0;
    }

    #checkboxes {
        display: none;
        border: 1px #dadada solid;
    }

    #checkboxes label {
        //display: block;
    }

    #checkboxes label:hover {
        background-color: #1e90ff;
    }
</style>