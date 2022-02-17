<?php
/**
 * Front Page
 *
 */

get_header();

?>

<div class="row no-gutters m-0">
    <div class="col-12 p-0">
        <h1 class="entry-title visually-hidden"><?php the_title(); ?></h1>
        <?php
        the_content();
        ?>
    </div>
</div>

<?php
get_footer();