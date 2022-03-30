<?php
$trades = get_terms([ 'taxonomy' => 'pros', 'hide_empty' => true ]);
$projects = get_terms([ 'taxonomy' => 'projects', 'hide_empty' => true ]);
?>

<div class="filters<?php if (is_search()): ?> filters--search<?php endif; ?> row gx-0 m-0 p-0 mb-3 mb-md-5">
    <div class="filters__wrapper d-flex p-0">
        <p class="filters__heading filters__button d-md-none">Filter <img class="filters__arrow" src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/arrow_blue.svg"></p>
        <p class="filters__heading d-none d-md-flex me-md-3">Filter</p>

        <form method="GET" id="filters" class="filters__form d-none d-md-flex flex-column">
            <div class="filters__dropdowns d-flex flex-column flex-md-row">
                <?php if (is_search()): ?>
                    <div class="filters__filter me-md-2 mb-2 mb-md-0">
                        <div class="filters__select selectBox" onclick="showCategories()">
                            <select class="px-2"><option>Category</option></select>
                            <div class="filters__over-select"></div>
                        </div>
                        <div id="filters__categories" class="filters__checkboxes py-2">
                            <label class="d-flex pb-1"><input class="invisible select-box" type="checkbox" name="category[]" value="pro" />Pros</label>
                            <label class="d-flex pb-1"><input class="invisible select-box" type="checkbox" name="category[]" value="post" />Articles</label>
                        </div>
                    </div>
                <?php else: ?>
                    <div class="filters__filter me-md-2 mb-2 mb-md-0">
                        <div class="filters__select selectBox" onclick="showTrades()">
                            <select class="px-2"><option>Trade</option></select>
                            <div class="filters__over-select"></div>
                        </div>
                        <div id="filters__trades" class="filters__checkboxes py-2">
                            <?php foreach ($trades as $trade) : ?>
                                <label class="d-flex pb-1"> 
                                <input class="invisible select-box" type="checkbox" name="pros[]" value="<?php echo $trade->slug; ?>" <?php checked((isset($_GET['pros']) && in_array($trade->slug, $_GET['pros']))) ?> />
                                <?php echo $trade->name; ?>
                            </label>
                            <?php endforeach; ?>
                        </div>
                    </div>

                    <div class="filters__filter me-md-2 mb-2 mb-md-0">
                        <div class="filters__select selectBox" onclick="showProjects()">
                            <select class="px-2"><option>Project Type</option></select>
                            <div class="filters__over-select"></div>
                        </div>
                        <div id="filters__projects" class="filters__checkboxes py-2">
                            <?php foreach ($projects as $project) : ?>
                                <label class="d-flex pb-1"> 
                                <input class="invisible select-box" type="checkbox" name="projects[]" value="<?php echo $project->slug; ?>" <?php checked((isset($_GET['projects']) && in_array($project->slug, $_GET['projects']))) ?> />
                                <?php echo $project->name; ?>
                            </label>
                            <?php endforeach; ?>
                        </div>
                    </div>
                <?php endif; ?>
            </div>
            
            <div class="filters__selected-group">
                <?php if (is_search()): ?>
                    <?php if (isset($_GET['post_type']) && $_GET['post_type'] == 'pro'): ?>
                        <label class="filters__label filters__label--checked p-2"><input class="filters__checkbox clear-category" type="checkbox" name="category" value="<?= get_search_query(); ?>" checked="checked" />
                           Pros
                        </label>
                    <?php endif; ?>
                    <?php if (isset($_GET['post_type']) && $_GET['post_type'] == 'post'): ?>
                        <label class="filters__label filters__label--checked p-2"><input class="filters__checkbox clear-category" type="checkbox" name="category" value="<?= get_search_query(); ?>" checked="checked" />
                           Articles
                        </label>
                    <?php endif; ?>
                <?php endif; ?>
                <?php foreach ($trades as $trade) : ?>
                    <?php $filterIsChecked = isset($_GET['pros']) && in_array($trade->slug, $_GET['pros']); ?>
                    <label class="filters__label<?php if ($filterIsChecked) { echo ' filters__label--checked'; }?> p-2"><input class="filters__checkbox checkbox-box" type="checkbox" name="pros[]" value="<?php echo $trade->slug; ?>" <?php checked($filterIsChecked) ?> />
                        <?php echo $trade->name; ?>
                    </label>
                <?php endforeach; ?>

                <?php foreach ($projects as $project) : ?>
                    <?php $filterIsChecked = isset($_GET['projects']) && in_array($project->slug, $_GET['projects']); ?>
                    <label class="filters__label<?php if ($filterIsChecked) { echo ' filters__label--checked'; }?> p-2"><input class="filters__checkbox checkbox-box" type="checkbox" name="projects[]" value="<?php echo $project->slug; ?>" <?php checked($filterIsChecked) ?> />
                        <?php echo $project->name; ?>
                    </label>
                <?php endforeach; ?>
            </div>
        </form>
    </div>
</div>