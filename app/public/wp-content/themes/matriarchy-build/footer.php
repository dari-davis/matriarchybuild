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

	<?php if (!is_account_page()): ?>
		<div class="newsletter callout">
			<div class="content-blocks__wrapper mx-auto d-flex flex-column flex-md-row">
				<div class="row gx-0">
					<div class="d-flex col-md-4">
						<div class="callout__scafolding col-3 d-md-none"></div>
						<div class="col-9 col-md-12 callout__heading mb-borders mb-borders--pink"><div class="h1 mb-0">Stay Up To Date With Us</div></div>
					</div>
					<div class="col callout__content mb-borders mb-borders--pink">
						<div class="callout__copy">Positive vibes. No mansplaining. Ever. Follow along to learn about the newest Pros on the MBuild roster, our favorite DIY + renovation tips, and stories about badass women in the trades. Let’s build the matriarchy one project at a time.</div>
						<div class="callout__form"><div class="klaviyo-form-TyzdNh"></div></div>
					</div>
					<div class="callout__scafolding col-md-2 d-none d-lg-block"></div>
				</div>
			</div>
		</div>
	<?php endif; ?>

	<footer id="footer" class="footer container-fluid p-0 m-0 row">
		<div class="footer__details col-md d-flex py-md-4 align-items-center">
			<div class="footer__details-inner row m-0">
				<div class="col-md-4 footer__logo py-4 p-md-0 text-center py-lg-4">
					<a href="/" class="d-md-none" aria-label="Matriarchy Build logo"><img class="m-auto" src="<?php echo get_template_directory_uri(); ?>/assets/images/logo-footer-blue.svg" alt="Matriarchy Build logo"></a>
					<a href="/" class="d-none d-md-block" aria-label="Matriarchy Build logo"><img class="m-auto" src="<?php echo get_template_directory_uri(); ?>/assets/images/logo-footer.svg" alt="Matriarchy Build logo"></a>
				</div>
				<div class="col-md-8 py-5 py-md-4 px-md-4 px-xl-5">
					<h3 class="text-white">Apply To Be A Pro</h3>
					<p>If you’d like to join our roster of Matriarchy Build Pros please click here to fill out our simple questionnaire. The Matriarchy Build roster features Pros that are available for 1:1 video consultations with folks tackling DIY and home renovation projects.</p>
					<a href="/apply" class="text-button">Apply Today</a>
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
			<ul class="footer__social-menu d-flex flex-row p-0 m-0 pt-3 pt-md-5">
				<li class="footer__social-menu-item">
					<a href="https://www.instagram.com/matriarchybuild/" target="_blank">
					<svg width="20" height="19" viewBox="0 0 20 19" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path fill-rule="evenodd" clip-rule="evenodd" d="M6.56107 0.057C7.57412 0.0103636 7.89712 0 10.4777 0C13.0582 0 13.3812 0.0112273 14.3934 0.057C15.4056 0.102773 16.0965 0.264273 16.701 0.498318C17.3341 0.737545 17.9084 1.1115 18.3834 1.59514C18.867 2.06927 19.2401 2.64273 19.4785 3.27664C19.7134 3.88118 19.874 4.57209 19.9207 5.58255C19.9673 6.59732 19.9777 6.92032 19.9777 9.5C19.9777 12.0805 19.9664 12.4035 19.9207 13.4166C19.8749 14.427 19.7134 15.118 19.4785 15.7225C19.2401 16.3565 18.8664 16.9309 18.3834 17.4057C17.9084 17.8894 17.3341 18.2625 16.701 18.5008C16.0965 18.7357 15.4056 18.8964 14.3951 18.943C13.3812 18.9896 13.0582 19 10.4777 19C7.89712 19 7.57412 18.9888 6.56107 18.943C5.55062 18.8972 4.85971 18.7357 4.25516 18.5008C3.62118 18.2624 3.04678 17.8887 2.57193 17.4057C2.08863 16.9313 1.71461 16.3572 1.47598 15.7234C1.24193 15.1188 1.0813 14.4279 1.03466 13.4175C0.988025 12.4027 0.977661 12.0797 0.977661 9.5C0.977661 6.91945 0.988888 6.59645 1.03466 5.58427C1.08043 4.57209 1.24193 3.88118 1.47598 3.27664C1.71497 2.6428 2.08926 2.06868 2.5728 1.59427C3.04697 1.11107 3.6208 0.737065 4.2543 0.498318C4.85884 0.264273 5.54975 0.103636 6.56021 0.057H6.56107ZM14.3165 1.767C13.3147 1.72123 13.0142 1.71173 10.4777 1.71173C7.94116 1.71173 7.64062 1.72123 6.6388 1.767C5.71212 1.80932 5.20948 1.96391 4.87439 2.09432C4.43134 2.26705 4.11439 2.47173 3.78189 2.80423C3.4667 3.11086 3.22413 3.48415 3.07198 3.89673C2.94157 4.23182 2.78698 4.73445 2.74466 5.66114C2.69889 6.66295 2.68939 6.9635 2.68939 9.5C2.68939 12.0365 2.69889 12.337 2.74466 13.3389C2.78698 14.2655 2.94157 14.7682 3.07198 15.1033C3.22398 15.5152 3.46666 15.8892 3.78189 16.1958C4.08848 16.511 4.46243 16.7537 4.87439 16.9057C5.20948 17.0361 5.71212 17.1907 6.6388 17.233C7.64062 17.2788 7.9403 17.2883 10.4777 17.2883C13.015 17.2883 13.3147 17.2788 14.3165 17.233C15.2432 17.1907 15.7458 17.0361 16.0809 16.9057C16.524 16.733 16.8409 16.5283 17.1734 16.1958C17.4887 15.8892 17.7313 15.5152 17.8833 15.1033C18.0138 14.7682 18.1683 14.2655 18.2107 13.3389C18.2564 12.337 18.2659 12.0365 18.2659 9.5C18.2659 6.9635 18.2564 6.66295 18.2107 5.66114C18.1683 4.73445 18.0138 4.23182 17.8833 3.89673C17.7106 3.45368 17.5059 3.13673 17.1734 2.80423C16.8668 2.48906 16.4935 2.2465 16.0809 2.09432C15.7458 1.96391 15.2432 1.80932 14.3165 1.767ZM9.26425 12.4286C9.94191 12.7107 10.6965 12.7488 11.3991 12.5363C12.1017 12.3239 12.7088 11.8741 13.1166 11.2638C13.5244 10.6534 13.7077 9.92048 13.6352 9.19005C13.5626 8.45961 13.2387 7.77702 12.7188 7.25886C12.3874 6.92764 11.9866 6.67402 11.5454 6.51626C11.1042 6.35851 10.6335 6.30054 10.1672 6.34653C9.70087 6.39252 9.25057 6.54133 8.84867 6.78225C8.44678 7.02316 8.1033 7.35019 7.84297 7.73978C7.58263 8.12937 7.41192 8.57184 7.34311 9.03533C7.2743 9.49882 7.30911 9.9718 7.44504 10.4202C7.58096 10.8686 7.81462 11.2813 8.12919 11.6286C8.44376 11.9759 8.83142 12.2491 9.26425 12.4286ZM7.02484 6.04718C7.47827 5.59375 8.01657 5.23407 8.60901 4.98868C9.20144 4.74328 9.83641 4.61698 10.4777 4.61698C11.1189 4.61698 11.7539 4.74328 12.3463 4.98868C12.9387 5.23407 13.477 5.59375 13.9305 6.04718C14.3839 6.50061 14.7436 7.03891 14.989 7.63135C15.2344 8.22378 15.3607 8.85875 15.3607 9.5C15.3607 10.1412 15.2344 10.7762 14.989 11.3687C14.7436 11.9611 14.3839 12.4994 13.9305 12.9528C13.0147 13.8686 11.7727 14.383 10.4777 14.383C9.1826 14.383 7.94059 13.8686 7.02484 12.9528C6.1091 12.0371 5.59464 10.7951 5.59464 9.5C5.59464 8.20494 6.1091 6.96293 7.02484 6.04718ZM16.4437 5.34418C16.556 5.23819 16.646 5.11072 16.7082 4.96934C16.7704 4.82796 16.8036 4.67553 16.8059 4.52108C16.8081 4.36662 16.7794 4.21329 16.7213 4.07015C16.6632 3.92702 16.577 3.79699 16.4678 3.68776C16.3586 3.57854 16.2286 3.49234 16.0854 3.43427C15.9423 3.37619 15.7889 3.34743 15.6345 3.34969C15.48 3.35194 15.3276 3.38516 15.1862 3.44737C15.0448 3.50959 14.9174 3.59955 14.8114 3.71191C14.6052 3.93043 14.4924 4.2207 14.4968 4.52108C14.5011 4.82146 14.6224 5.1083 14.8348 5.32073C15.0473 5.53315 15.3341 5.65442 15.6345 5.6588C15.9349 5.66318 16.2251 5.55032 16.4437 5.34418Z" fill="#555433"/>
					</svg>
					</a>
				</li>
				<li class="footer__social-menu-item">
					<a href="https://www.tiktok.com/@matriarchybuild" target="_blank">
					<svg width="18" height="19" viewBox="0 0 18 19" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path d="M17.5877 7.7916C15.9549 7.79551 14.3622 7.28587 13.0345 6.33469V12.9686C13.0341 14.1972 12.6589 15.3965 11.959 16.4059C11.2592 17.4154 10.2681 18.187 9.11836 18.6175C7.96857 19.048 6.71487 19.1169 5.52488 18.8151C4.3349 18.5132 3.26536 17.8549 2.45927 16.9282C1.65318 16.0015 1.14897 14.8506 1.01406 13.6294C0.879148 12.4082 1.11996 11.1749 1.70431 10.0943C2.28865 9.01378 3.18867 8.13754 4.28402 7.58276C5.37937 7.02799 6.61783 6.82113 7.83382 6.98984V10.3264C7.27738 10.1513 6.67987 10.1565 6.12661 10.3415C5.57335 10.5265 5.09263 10.8817 4.75311 11.3564C4.41359 11.8312 4.23262 12.4011 4.23606 12.9849C4.23949 13.5687 4.42715 14.1365 4.77224 14.6072C5.11732 15.0779 5.60219 15.4274 6.15759 15.6059C6.71299 15.7843 7.31052 15.7825 7.86486 15.6008C8.4192 15.4191 8.90199 15.0667 9.24428 14.594C9.58658 14.1213 9.77089 13.5524 9.77087 12.9686V0H13.0345C13.0323 0.275844 13.0554 0.551313 13.1035 0.822923C13.2169 1.42925 13.4527 2.00605 13.7965 2.51804C14.1403 3.03003 14.5848 3.46644 15.1029 3.80059C15.8399 4.28837 16.7041 4.54835 17.5877 4.54816V7.7916Z" fill="#555433"/>
					</svg>
					</a>
				</li>
				<li class="footer__social-menu-item">
					<a href="https://www.pinterest.com/04dexx5gswbh2v4on157ftn5y7pzq9/_saved/" target="_blank">
					<svg width="21" height="20" viewBox="0 0 21 20" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path d="M0.977539 10C0.977539 14.2692 3.65337 17.9142 7.41921 19.3483C7.32754 18.5675 7.23004 17.28 7.44004 16.3767C7.62087 15.6 8.60754 11.4283 8.60754 11.4283C8.60754 11.4283 8.31004 10.8325 8.31004 9.95C8.31004 8.56667 9.11171 7.53333 10.1109 7.53333C10.9609 7.53333 11.3709 8.17083 11.3709 8.935C11.3709 9.78917 10.8267 11.0658 10.5459 12.25C10.3117 13.2408 11.0434 14.0492 12.02 14.0492C13.7892 14.0492 15.15 12.1833 15.15 9.49C15.15 7.10583 13.4367 5.44 10.9909 5.44C8.15921 5.44 6.49671 7.56417 6.49671 9.76C6.49671 10.6158 6.82587 11.5325 7.23754 12.0317C7.27264 12.0694 7.29743 12.1155 7.30955 12.1655C7.32166 12.2156 7.32068 12.2679 7.30671 12.3175C7.23087 12.6325 7.06254 13.3083 7.03004 13.4467C6.98587 13.6283 6.88587 13.6675 6.69671 13.5792C5.45337 13.0008 4.67671 11.1833 4.67671 9.72333C4.67671 6.5825 6.95754 3.69917 11.2534 3.69917C14.7067 3.69917 17.3909 6.16 17.3909 9.44833C17.3909 12.8792 15.2284 15.6408 12.225 15.6408C11.2159 15.6408 10.2684 15.1158 9.94337 14.4967C9.94337 14.4967 9.44421 16.3983 9.32337 16.8633C9.08837 17.7667 8.43671 18.91 8.03254 19.5592C8.96421 19.8458 9.95254 20 10.9775 20C16.5 20 20.9775 15.5225 20.9775 10C20.9775 4.4775 16.5 0 10.9775 0C5.45504 0 0.977539 4.4775 0.977539 10Z" fill="#555433"/>
					</svg>
					</a>
				</li>
				<li class="footer__social-menu-item">
					<a href="https://www.youtube.com/channel/UCVIsS1vBde3-csSrrLrJQ9Q" target="_blank">
					<svg width="22" height="14" viewBox="0 0 22 14" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path d="M21.5278 2.1966C21.409 1.77269 21.1775 1.3889 20.858 1.08604C20.5294 0.773862 20.1268 0.550554 19.688 0.437193C18.0457 0.00433624 11.4663 0.00433634 11.4663 0.00433634C8.72344 -0.0268707 5.98122 0.110386 3.25517 0.415331C2.81635 0.537067 2.41443 0.765365 2.08514 1.07992C1.76159 1.39123 1.52724 1.77511 1.40481 2.19573C1.11073 3.78002 0.967841 5.38867 0.978079 6.99999C0.967585 8.60987 1.11012 10.218 1.40481 11.8043C1.52461 12.2231 1.75809 12.6053 2.08252 12.9139C2.40694 13.2226 2.81094 13.4456 3.25517 13.5637C4.91926 13.9957 11.4663 13.9957 11.4663 13.9957C14.2127 14.0269 16.9584 13.8896 19.688 13.5847C20.1268 13.4713 20.5294 13.248 20.858 12.9358C21.1774 12.633 21.4086 12.2492 21.527 11.8252C21.8287 10.2416 21.9754 8.63225 21.9651 7.02011C21.9878 5.40114 21.8412 3.78423 21.5278 2.19573V2.1966ZM9.37462 9.99414V4.00673L14.8487 7.00087L9.37462 9.99414Z" fill="#555433"/>
					</svg>
					</a>
				</li>
			</ul>
		</div>
	</footer><!-- /#footer -->
	<?php
		wp_footer();
	?>

	<script async type="text/javascript" src="https://static.klaviyo.com/onsite/js/klaviyo.js?company_id=WG95tq"></script>
	<script type="text/javascript" src="<?php echo get_template_directory_uri(); ?>/assets/js/slick.min.js"></script>
</body>
</html>
