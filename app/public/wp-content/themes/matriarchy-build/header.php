<!DOCTYPE html>
<html <?php language_attributes(); ?>>

<head>
  <meta charset="<?php bloginfo( 'charset' ); ?>">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="Built by Women. Built for Everyone. Matriarchy Build wants to empower you to take on your next project with confidence.">
  <meta name="p:domain_verify" content="ba15d92dd5d02f5fb6cf46d5be0e3149"/>

  <?php wp_head(); ?>
</head>

<?php
	$navbar_scheme   = get_theme_mod( 'navbar_scheme', 'navbar-light bg-light' ); // Get custom meta-value.
	$navbar_position = get_theme_mod( 'navbar_position', 'static' ); // Get custom meta-value.

	$search_enabled  = get_theme_mod( 'search_enabled', '1' ); // Get custom meta-value.
?>

<body <?php body_class(); ?>>

  <?php wp_body_open(); ?>

  <a href="#main"
    class="visually-hidden-focusable"><?php esc_html_e( 'Skip to main content', 'matriarchy-build' ); ?></a>

  <header id="header" class="header row no-gutters m-0">
    <div class="header__logo col-md py-4 py-lg-0 px-lg-4 d-flex">
      <a href="/"><img data-no-lazy class="header__logo-image mx-auto" src="<?php echo get_template_directory_uri(); ?>/assets/images/logo.svg" alt="Matriarchy Build logo"></a>
    </div>

    <div class="header__nav col-md text-lg-center gx-0">
      <div class="header__top row gx-0 invisible">
        <div class="header__nav-container col-lg-8">
          <div class="primary-nav pb-3 py-lg-0 mx-4 mx-lg-0">
            <?php
              // Loading WordPress Custom Menu (theme_location).
              wp_nav_menu(
                array(
                  'theme_location' => 'main-menu',
                  'container'      => '',
                  'menu_class'     => 'primary-nav__menu d-flex m-0 p-0',
                  'fallback_cb'    => 'WP_Bootstrap_Navwalker::fallback',
                  'walker'         => new WP_Bootstrap_Navwalker(),
                )
              );
            ?>
          </div>
        </div>

        <div class="header__account <?php if (is_user_logged_in()): ?>header__account--signed-in <?php endif; ?>col-lg-4 pt-3 pb-2 py-lg-0 px-4 px-lg-0">
          <?php if (is_user_logged_in()): ?>
            <div class="header__account-link d-flex justify-content-lg-center align-items-lg-center flex-column">
              <?php if (in_array('pro_user', (array) wp_get_current_user()->roles)): ?>
                <a class="text-button" href="<?= wc_get_account_endpoint_url('pro-upcoming-consultations'); ?>">My Account</a>
              <?php else: ?>
                <a class="text-button" href="<?= wc_get_account_endpoint_url('upcoming-consultations'); ?>">My Account</a>
              <?php endif; ?>
              <span class="header__user d-flex mt-1 mt-lg-0">Logged in as&nbsp;<span class="header__user-name"><?= wp_get_current_user()->first_name; ?></span><span>
            </div>
          <?php else: ?>
            <div class="header__account-link d-flex justify-content-lg-center align-items-center mb-1 mb-lg-0">
              <a class="text-button" href="/my-account">Sign In</a>
            </div>
            <div class="header__account-link d-flex justify-content-lg-center align-items-center">
              <a class="text-button" href="/create-account">Sign Up</a>
            </div>
          <?php endif; ?>
        </div>
      </div>
  
      <div class="header__search-container row gx-0">
        <a data-menu-icon class="header__hamburger col-auto p-0 me-3 me-lg-0 d-flex d-lg-none" href="/"><img data-no-lazy src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/menu.svg"></a>
        <a data-menu-icon class="header__hamburger col-auto p-0 me-3 me-lg-0 d-flex d-lg-none invisible" href="/"><img data-no-lazy src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/menu-open.svg"></a>
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
      </div>
    </div>
  </header>

  <main id="main" class="main mx-auto px-lg-0 container-fluid"
    <?php if ( isset( $navbar_position ) && 'fixed_top' === $navbar_position ) : echo ' style="padding-top: 100px;"'; elseif ( isset( $navbar_position ) && 'fixed_bottom' === $navbar_position ) : echo ' style="padding-bottom: 100px;"'; endif; ?>>
    <?php
    // If Single or Archive (Category, Tag, Author or a Date based page).
    if ( is_single() || is_archive() ) :
  ?>
    <div class="main__row row m-0">
      <div class="col-12 p-0">
        <?php
    endif;
  ?>