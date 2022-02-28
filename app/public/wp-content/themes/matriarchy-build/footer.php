			<?php
				// If Single or Archive (Category, Tag, Author or a Date based page).
				if ( is_single() || is_archive() ) :
			?>
					</div><!-- /.col -->

					<?php
						get_sidebar();
					?>

				</div><!-- /.row -->
			<?php
				endif;
			?>
		</main><!-- /#main -->
		<footer id="footer" class="footer container-fluid p-0 m-0 row">
			<div class="footer__details col-md d-flex py-md-4 align-items-center">
				<div class="footer__details-inner row m-0">
					<div class="col-md-4 footer__logo py-4 p-md-0 text-center py-lg-4">
						<a href="/" class="d-md-none"><img class="m-auto" src="<?php echo get_template_directory_uri(); ?>/assets/images/logo-footer-blue.svg"></a>
						<a href="/" class="d-none d-md-block"><img class="m-auto" src="<?php echo get_template_directory_uri(); ?>/assets/images/logo-footer.svg"></a>
					</div>
					<div class="col-md-8 py-5 py-md-4 px-md-4 px-xl-5">
						<h3 class="text-white">Apply To Be A "Pro"</h3>
						<p>Duis id volutpat urna. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque lectus lorem, mollis ac purus vitae, aliquam finibus nunc.</p>
						<a href="/" class="text-button">Apply Today</a>
					</div>
				</div>
			</div>
			<div class="footer__menu d-flex flex-column col-md px-md-4 py-4 py-md-5">
				<?php
					if ( has_nav_menu( 'footer-menu' ) ) : // See function register_nav_menus() in functions.php
						/*
							Loading WordPress Custom Menu (theme_location) ... remove <div> <ul> containers and show only <li> items!!!
							Menu name taken from functions.php!!! ... register_nav_menu( 'footer-menu', 'Footer Menu' );
							!!! IMPORTANT: After adding all pages to the menu, don't forget to assign this menu to the Footer menu of "Theme locations" /wp-admin/nav-menus.php (on left side) ... Otherwise the themes will not know, which menu to use!!!
						*/
						wp_nav_menu(
							array(
								'theme_location'  => 'footer-menu',
								'container'       => 'nav',
								'container_class' => 'd-flex',
								'fallback_cb'     => '',
								'items_wrap'      => '<ul class="menu nav flex-column">%3$s</ul>',
								//'fallback_cb'    => 'WP_Bootstrap4_Navwalker_Footer::fallback',
								'walker'          => new WP_Bootstrap4_Navwalker_Footer(),
							)
						);
					endif;

				?>
				<ul class="footer__social-menu d-flex flex-row p-0 m-0 pt-md-5">
					<li class="footer__social-menu-item"><a href="#"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/twitter.svg"></a></li>
					<li class="footer__social-menu-item"><a href="#"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/facebook.svg"></a></li>
				</ul>
			</div>
		</footer><!-- /#footer -->
	</div><!-- /#wrapper -->
	<?php
		wp_footer();
	?>

	<script type="text/javascript" src="<?php echo get_template_directory_uri(); ?>/assets/js/slick.min.js"></script>
</body>
</html>
