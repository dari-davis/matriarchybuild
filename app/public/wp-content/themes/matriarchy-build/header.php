<!DOCTYPE html>
<html <?php language_attributes(); ?>>

<head>
  <meta charset="<?php bloginfo( 'charset' ); ?>">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <?php wp_head(); ?>

  <!-- BUG HERD -->
  <script type="text/javascript" src="https://www.bugherd.com/sidebarv2.js?apikey=17uyxyqtgbj0wovxn3mb9w" async="true"></script>
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

  <div id="wrapper">
    <header id="header" class="header row no-gutters m-0">
      <div class="header__logo col-md py-4 py-md-0 p-lg-4 d-flex">
        <a href="/"><img class="header__logo-image mx-auto" src="<?php echo get_template_directory_uri(); ?>/assets/images/logo.svg"></a>
      </div>

      <div class="header__nav col-md text-md-center gx-0">
        <div class="header__nav-container invisible d-md-flex">
          <div class="header__account row pt-3 pb-4 py-md-0 px-2 px-md-0">
            <div class="col-md-6 py-2 py-md-3 py-lg-4">
              <?php if (is_user_logged_in() && in_array('pro_user', (array) wp_get_current_user()->roles)): ?>
                <a class="text-button" href="/my-account/consultations">My Account</a>
              <?php elseif (is_user_logged_in()): ?>
                <a class="text-button" href="/my-account/upcoming-consultations">My Account</a>
              <?php else: ?>
                <a class="text-button" href="/my-account">Sign In</a>
              <?php endif; ?>
            </div>
            <div class="col-md-6 py-2 py-md-3 py-lg-4">
              <a class="text-button" href="/create-account">Sign Up</a>
            </div>
          </div>

          <div class="primary-nav row pt-4 pb-3 py-md-0 px-4 px-md-0">
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

        <div class="header__search-container row pt-md-2 pb-md-3 py-lg-4 gx-0">
          <a class="header__hamburger col-auto p-0 me-3 me-md-0 mb-borders d-flex d-md-none" href="/"><img class="" src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/menu.svg"></a>
          <div class="search col p-0">
            <?php if ( '1' === $search_enabled ) : ?>
              <form class="search-form my-md-2 my-lg-0 p-0" role="search" method="get"
                action="<?php echo esc_url( home_url( '/' ) ); ?>">
                <div class="input-group">
                  <input type="text" name="s" class="form-control"
                    placeholder="<?php esc_attr_e( 'Search', 'matriarchy-build' ); ?>"
                    title="<?php esc_attr_e( 'Search', 'matriarchy-build' ); ?>" />
                  <button type="submit" name="submit"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/search.svg"/></button>
                </div>
              </form>
            <?php endif; ?>
            </div>
        </div>

      </div>
    </header>

    <main id="main" class="main mx-auto px-md-0 container-fluid"
      <?php if ( isset( $navbar_position ) && 'fixed_top' === $navbar_position ) : echo ' style="padding-top: 100px;"'; elseif ( isset( $navbar_position ) && 'fixed_bottom' === $navbar_position ) : echo ' style="padding-bottom: 100px;"'; endif; ?>>
      <?php
			// If Single or Archive (Category, Tag, Author or a Date based page).
			if ( is_single() || is_archive() ) :
		?>
      <div class="row m-0">
        <div class="col-12 p-0">
          <?php
			endif;
		?>