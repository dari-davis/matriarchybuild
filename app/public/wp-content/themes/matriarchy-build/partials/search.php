<?php $search_enabled  = get_theme_mod( 'search_enabled', '1' ); // Get custom meta-value. ?>
<a data-menu-icon class="header__hamburger col-auto p-0 me-3 me-lg-0 d-flex d-lg-none" href="/">
    <svg width="22" height="21" viewBox="0 0 22 21" fill="none" xmlns="http://www.w3.org/2000/svg">
    <rect x="1" y="1" width="20" height="19" stroke="#F7CBAD"/>
    <line x1="5" y1="6.5" x2="17" y2="6.5" stroke="#F7CBAD"/>
    <line x1="5" y1="10.5" x2="17" y2="10.5" stroke="#F7CBAD"/>
    <line x1="5" y1="14.5" x2="17" y2="14.5" stroke="#F7CBAD"/>
    </svg>
</a>
<a data-menu-icon class="header__hamburger col-auto p-0 me-3 me-lg-0 d-flex d-lg-none invisible" href="/">
<svg width="22" height="21" viewBox="0 0 22 21" fill="none" xmlns="http://www.w3.org/2000/svg">
    <rect x="1" y="1" width="20" height="19" stroke="#F7CBAD"/>
    <path d="M6 5L16 14.7308" stroke="#F7CBAD"/>
    <path d="M16 5L6 14.7308" stroke="#F7CBAD"/>
</svg>
</a>
<div class="search col p-0">
    <?php if ( '1' === $search_enabled ) : ?>
    <form class="search-form my-lg-0 p-0" role="search" method="get"
        action="<?php echo esc_url( home_url( '/' ) ); ?>">
        <div class="input-group">
        <input type="text" name="s" class="form-control"
            placeholder="<?php esc_attr_e( 'Search', 'matriarchy-build' ); ?>"
            title="<?php esc_attr_e( 'Search', 'matriarchy-build' ); ?>" />
        <button type="submit" name="submit" aria-label="Search"><img data-no-lazy src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/search.svg" alt="Search icon"/></button>
        </div>
    </form>
    <?php endif; ?>
</div>