<div class="filters row gx-0 m-0 mb-3 mb-md-5">
    <div class="filters__wrapper d-flex p-0">
        <p class="filters__heading me-md-3">Filter <img class="d-md-none" src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/arrow_blue.svg"></p>
        <div class="filters__filter me-md-2 mb-3 mb-md-0"> <!-- Trade -->
            <div class="filters__select">
                <?php
                    $categories = get_categories('taxonomy=pros');
                    $select = "<select class='px-2' name='cat' id='cat1' class='postform'>n";
                    $select.= "<option value='-1'>Trade</option>n";
                    
                    foreach($categories as $category){
                        if($category->count > 0){
                            $select.= "<option value='".$category->slug."'>".$category->name."</option>";
                        }
                    }
                    
                    $select.= "</select>";
                    echo $select;
                ?>
            </div>
        </div>
        <div class="filters__filter me-md-2 mb-3 mb-md-0"> <!-- Category -->
            <div class="filters__select">
                <?php
                    $categories = ['pro', 'post'];
                    $select = "<select class='px-2' name='cat' id='cat2' class='postform'>n";
                    $select.= "<option value='-1'>Category</option>n";
                    $select.= "<option value='pro'>Pros</option>n";
                    $select.= "<option value='post'>Articles</option>n";

                    $select.= "</select>";
                    echo $select;
                ?>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        var cat1dropdown = document.getElementById("cat1");
        function onCat1Change() {
            if ( cat1dropdown.options[cat1dropdown.selectedIndex].value != -1 ) {
                location.href = "<?php echo home_url();?>/pros/"+cat1dropdown.options[cat1dropdown.selectedIndex].value+"/";
            }
        }
        cat1dropdown.onchange = onCat1Change;

        var cat2dropdown = document.getElementById("cat2");
        function onCat2Change() {
            if ( cat2dropdown.options[cat2dropdown.selectedIndex].value != -1 ) {
                var selection = cat2dropdown.options[cat2dropdown.selectedIndex].value;
                if (selection == 'pro') {
                    location.href = "<?php echo home_url();?>/?s=<?= get_search_query(); ?>&post_type=pro";
                } else {
                    location.href = "<?php echo home_url();?>/?s=<?= get_search_query(); ?>&post_type=post";
                }
            }
        }
        cat2dropdown.onchange = onCat2Change;
    </script>
</div>