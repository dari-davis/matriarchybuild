<div class="filters row no-gutters m-0 my-3 my-md-5">
    <div class="filters__wrapper d-flex p-0 ms-md-2">
        <p class="filters__heading me-3">Filter</p>
        <div class="filters__filter me-2 mb-3 mb-md-0"> <!-- Trade -->
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
        
        <div class="filters__filter me-2 mb-3 mb-md-0">  <!-- Availability -->
            <div class="filters__select">
                <?php
                    $select = "<select class='px-2' name='cat' id='cat2' class='postform'>n";
                    $select.= "<option value='-1'>Availability</option>n";
                    $select.= "<option value='bookable'>Available</option>n";
                    $select.= "<option value='nonbookable'>Unavailable</option>n";

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
                location.href = "<?php echo home_url();?>/pros/"+cat2dropdown.options[cat2dropdown.selectedIndex].value+"/";
            }
        }
        cat2dropdown.onchange = onCat2Change;
    </script>
</div>