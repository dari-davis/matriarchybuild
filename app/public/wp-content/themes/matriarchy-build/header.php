<!DOCTYPE html>
<html <?php language_attributes(); ?>>

<head>
  <meta charset="<?php bloginfo( 'charset' ); ?>">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="Built by Women. Built for Everyone. Matriarchy Build wants to empower you to take on your next project with confidence.">
  <meta name="p:domain_verify" content="ba15d92dd5d02f5fb6cf46d5be0e3149"/>

  <script async src="https://www.googletagmanager.com/gtag/js?id=G-3W51537JVV"></script>
  <script>window.dataLayer = window.dataLayer || [];function gtag(){dataLayer.push(arguments);}gtag('js', new Date());gtag('config', 'G-3W51537JVV');</script>

  <!-- Facebook Meta Tags -->
  <meta property="og:url" content="https://matriarchybuild.com">
  <meta property="og:title" content="Matriarchy Build – Built by Women. Built for Everyone.">
  <meta property="og:description" content="Built by Women. Built for Everyone. Matriarchy Build wants to empower you to take on your next project with confidence.">
  <meta property="og:image" content="https://matriarchybuild.com/og-image.png">

  <!-- Twitter Meta Tags -->
  <meta name="twitter:card" content="summary_large_image">
  <meta property="twitter:domain" content="matriarchybuild.com">
  <meta property="twitter:url" content="https://matriarchybuild.com">
  <meta name="twitter:title" content="Matriarchy Build – Built by Women. Built for Everyone.">
  <meta name="twitter:description" content="Built by Women. Built for Everyone. Matriarchy Build wants to empower you to take on your next project with confidence.">
  <meta name="twitter:image" content="https://matriarchybuild.com/og-image.png">

  <?php wp_head(); ?>
</head>

<?php
	$navbar_scheme   = get_theme_mod( 'navbar_scheme', 'navbar-light bg-light' ); // Get custom meta-value.
	$navbar_position = get_theme_mod( 'navbar_position', 'static' ); // Get custom meta-value.
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
        <div class="header__nav-container col-lg-9">
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

        <div class="header__search-container header__search-container--sticky row gx-0">
        <?= get_template_part('partials/search'); ?>
      </div>

        <div class="header__account <?php if (is_user_logged_in()): ?>header__account--signed-in <?php endif; ?>col-lg-3 pt-3 pb-2 py-lg-0 px-4 px-lg-0">
          <?php if (is_user_logged_in()): ?>
            <div class="header__account-link d-flex justify-content-lg-center align-items-lg-center flex-column">
              <a class="text-button" href="<?= wc_get_account_endpoint_url('upcoming-consultations'); ?>">My Account</a>
              <span class="header__user d-flex mt-1">Hello&nbsp;<span class="header__user-name"><?= wp_get_current_user()->first_name; ?></span>!<span>
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
        <?= get_template_part('partials/search'); ?>
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