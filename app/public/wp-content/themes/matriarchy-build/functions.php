<?php

/**
 * Includes
 */
array_map(function ($file) {
  if ('blocks' === $file):
    foreach (glob(get_stylesheet_directory() . "/includes/blocks/*.php") as $filename):
      require_once($filename);
    endforeach;
  endif;
	$filepath = "/includes/{$file}.php";
  require_once(get_stylesheet_directory() . $filepath);
}, ['blocks', 'post-types', 'taxonomies']);


/**
 * Include Theme Customizer.
 *
 * @since v1.0
 */
$theme_customizer = get_template_directory() . '/inc/customizer.php';
if ( is_readable( $theme_customizer ) ) {
	require_once $theme_customizer;
}


/**
 * Include Support for wordpress.com-specific functions.
 * 
 * @since v1.0
 */
$theme_wordpresscom = get_template_directory() . '/inc/wordpresscom.php';
if ( is_readable( $theme_wordpresscom ) ) {
	require_once $theme_wordpresscom;
}


/**
 * Set the content width based on the theme's design and stylesheet.
 *
 * @since v1.0
 */
if ( ! isset( $content_width ) ) {
	$content_width = 800;
}


/**
 * General Theme Settings.
 *
 * @since v1.0
 */
if ( ! function_exists( 'matriarchy_build_setup_theme' ) ) :
	function matriarchy_build_setup_theme() {
		// Make theme available for translation: Translations can be filed in the /languages/ directory.
		load_theme_textdomain( 'matriarchy-build', get_template_directory() . '/languages' );

		// Theme Support.
		add_theme_support( 'title-tag' );
		add_theme_support( 'automatic-feed-links' );
		add_theme_support( 'post-thumbnails' );
		add_theme_support(
			'html5',
			array(
				'search-form',
				'comment-form',
				'comment-list',
				'gallery',
				'caption',
				'script',
				'style',
				'navigation-widgets',
			)
		);

		// Add support for Block Styles.
		add_theme_support( 'wp-block-styles' );
		// Add support for full and wide alignment.
		add_theme_support( 'align-wide' );
		// Add support for editor styles.
		add_theme_support( 'editor-styles' );
		// Enqueue editor styles.
		add_editor_style( 'style-editor.css' );

		// Default Attachment Display Settings.
		update_option( 'image_default_align', 'none' );
		update_option( 'image_default_link_type', 'none' );
		update_option( 'image_default_size', 'large' );

		// Custom CSS-Styles of Wordpress Gallery.
		add_filter( 'use_default_gallery_style', '__return_false' );

		// add Matriarchy Build color palette
		add_theme_support('editor-color-palette', array(
			array(
				'name' => esc_html__('Blue', 'matriarchybuild'),
				'slug' => 'blue',
				'color' => '#2d457c',
			),
			array(
				'name' => esc_html__('Pink', 'matriarchybuild'),
				'slug' => 'pink',
				'color' => '#f7cbad',
			),
			array(
				'name' => esc_html__('Yellow', 'matriarchybuild'),
				'slug' => 'yellow',
				'color' => '#fbf8ea',
			),
			array(
				'name' => esc_html__('Green', 'matriarchybuild'),
				'slug' => 'green',
				'color' => '#555433',
			),
			array(
				'name' => esc_html__('Olive', 'matriarchybuild'),
				'slug' => 'olive',
				'color' => '#bbb69b',
			),
			array(
				'name' => esc_html__('Black', 'matriarchybuild'),
				'slug' => 'black',
				'color' => '#000000',
			),
			array(
				'name' => esc_html__('White', 'matriarchybuild'),
				'slug' => 'white',
				'color' => '#ffffff',
			)
		));


		// Disabled custom color picker
		add_theme_support('disable-custom-colors');
	}
	add_action( 'after_setup_theme', 'matriarchy_build_setup_theme' );

	// Disable Block Directory: https://github.com/WordPress/gutenberg/blob/trunk/docs/reference-guides/filters/editor-filters.md#block-directory
	remove_action( 'enqueue_block_editor_assets', 'wp_enqueue_editor_block_directory_assets' );
	remove_action( 'enqueue_block_editor_assets', 'gutenberg_enqueue_block_editor_assets_block_directory' );
endif;


/**
 * Fire the wp_body_open action.
 *
 * Added for backwards compatibility to support pre 5.2.0 WordPress versions.
 *
 * @since v2.2
 */
if ( ! function_exists( 'wp_body_open' ) ) :
	function wp_body_open() {
		/**
		 * Triggered after the opening <body> tag.
		 *
		 * @since v2.2
		 */
		do_action( 'wp_body_open' );
	}
endif;


/**
 * Add new User fields to Userprofile.
 *
 * @since v1.0
 */
if ( ! function_exists( 'matriarchy_build_add_user_fields' ) ) :
	function matriarchy_build_add_user_fields( $fields ) {
		// Add new fields.
		$fields['facebook_profile'] = 'Facebook URL';
		$fields['twitter_profile']  = 'Twitter URL';
		$fields['linkedin_profile'] = 'LinkedIn URL';
		$fields['xing_profile']     = 'Xing URL';
		$fields['github_profile']   = 'GitHub URL';

		return $fields;
	}
	add_filter( 'user_contactmethods', 'matriarchy_build_add_user_fields' ); // get_user_meta( $user->ID, 'facebook_profile', true );
endif;


/**
 * Test if a page is a blog page.
 * if ( is_blog() ) { ... }
 *
 * @since v1.0
 */
function is_blog() {
	global $post;
	$posttype = get_post_type( $post );

	return ( ( is_archive() || is_author() || is_category() || is_home() || is_single() || ( is_tag() && ( 'post' === $posttype ) ) ) ? true : false );
}


/**
 * Disable comments for Media (Image-Post, Jetpack-Carousel, etc.)
 *
 * @since v1.0
 */
function matriarchy_build_filter_media_comment_status( $open, $post_id = null ) {
	$media_post = get_post( $post_id );
	if ( 'attachment' === $media_post->post_type ) {
		return false;
	}
	return $open;
}
add_filter( 'comments_open', 'matriarchy_build_filter_media_comment_status', 10, 2 );


/**
 * Style Edit buttons as badges: https://getbootstrap.com/docs/5.0/components/badge
 *
 * @since v1.0
 */
function matriarchy_build_custom_edit_post_link( $output ) {
	return str_replace( 'class="post-edit-link"', 'class="post-edit-link badge badge-secondary"', $output );
}
add_filter( 'edit_post_link', 'matriarchy_build_custom_edit_post_link' );

function matriarchy_build_custom_edit_comment_link( $output ) {
	return str_replace( 'class="comment-edit-link"', 'class="comment-edit-link badge badge-secondary"', $output );
}
add_filter( 'edit_comment_link', 'matriarchy_build_custom_edit_comment_link' );


/**
 * Responsive oEmbed filter: https://getbootstrap.com/docs/5.0/helpers/ratio
 *
 * @since v1.0
 */
function matriarchy_build_oembed_filter( $html ) {
	return '<div class="ratio ratio-16x9">' . $html . '</div>';
}
add_filter( 'embed_oembed_html', 'matriarchy_build_oembed_filter', 10, 4 );


if ( ! function_exists( 'matriarchy_build_content_nav' ) ) :
	/**
	 * Display a navigation to next/previous pages when applicable.
	 *
	 * @since v1.0
	 */
	function matriarchy_build_content_nav( $nav_id ) {
		global $wp_query;

		if ( $wp_query->max_num_pages > 1 ) :
	?>
			<div id="<?php echo esc_attr( $nav_id ); ?>" class="d-flex mb-4 justify-content-between">
				<div><?php next_posts_link( '<span aria-hidden="true">&larr;</span> ' . esc_html__( 'Older posts', 'matriarchy-build' ) ); ?></div>
				<div><?php previous_posts_link( esc_html__( 'Newer posts', 'matriarchy-build' ) . ' <span aria-hidden="true">&rarr;</span>' ); ?></div>
			</div><!-- /.d-flex -->
	<?php
		else :
			echo '<div class="clearfix"></div>';
		endif;
	}

	// Add Class.
	function posts_link_attributes() {
		return 'class="btn btn-secondary btn-lg"';
	}
	add_filter( 'next_posts_link_attributes', 'posts_link_attributes' );
	add_filter( 'previous_posts_link_attributes', 'posts_link_attributes' );
endif;


/**
 * Init Widget areas in Sidebar.
 *
 * @since v1.0
 */
function matriarchy_build_widgets_init() {
	// Area 1.
	register_sidebar(
		array(
			'name'          => 'Primary Widget Area (Sidebar)',
			'id'            => 'primary_widget_area',
			'before_widget' => '',
			'after_widget'  => '',
			'before_title'  => '<h3 class="widget-title">',
			'after_title'   => '</h3>',
		)
	);

	// Area 2.
	register_sidebar(
		array(
			'name'          => 'Secondary Widget Area (Header Navigation)',
			'id'            => 'secondary_widget_area',
			'before_widget' => '',
			'after_widget'  => '',
			'before_title'  => '<h3 class="widget-title">',
			'after_title'   => '</h3>',
		)
	);

	// Area 3.
	register_sidebar(
		array(
			'name'          => 'Third Widget Area (Footer)',
			'id'            => 'third_widget_area',
			'before_widget' => '',
			'after_widget'  => '',
			'before_title'  => '<h3 class="widget-title">',
			'after_title'   => '</h3>',
		)
	);
}
add_action( 'widgets_init', 'matriarchy_build_widgets_init' );


if ( ! function_exists( 'matriarchy_build_article_posted_on' ) ) :
	/**
	 * "Theme posted on" pattern.
	 *
	 * @since v1.0
	 */
	function matriarchy_build_article_posted_on() {
		printf(
			wp_kses_post( __( '<span class="sep">Posted on </span><a href="%1$s" title="%2$s" rel="bookmark"><time class="entry-date" datetime="%3$s">%4$s</time></a><span class="by-author"> <span class="sep"> by </span> <span class="author-meta vcard"><a class="url fn n" href="%5$s" title="%6$s" rel="author">%7$s</a></span></span>', 'matriarchy-build' ) ),
			esc_url( get_the_permalink() ),
			esc_attr( get_the_date() . ' - ' . get_the_time() ),
			esc_attr( get_the_date( 'c' ) ),
			esc_html( get_the_date() . ' - ' . get_the_time() ),
			esc_url( get_author_posts_url( (int) get_the_author_meta( 'ID' ) ) ),
			sprintf( esc_attr__( 'View all posts by %s', 'matriarchy-build' ), get_the_author() ),
			get_the_author()
		);
	}
endif;


/**
 * Template for Password protected post form.
 *
 * @since v1.0
 */
function matriarchy_build_password_form() {
	global $post;
	$label = 'pwbox-' . ( empty( $post->ID ) ? rand() : $post->ID );

	$output = '<div class="row">';
		$output .= '<form action="' . esc_url( site_url( 'wp-login.php?action=postpass', 'login_post' ) ) . '" method="post">';
		$output .= '<h4 class="col-md-12 alert alert-warning">' . esc_html__( 'This content is password protected. To view it please enter your password below.', 'matriarchy-build' ) . '</h4>';
			$output .= '<div class="col-md-6">';
				$output .= '<div class="input-group">';
					$output .= '<input type="password" name="post_password" id="' . esc_attr( $label ) . '" placeholder="' . esc_attr__( 'Password', 'matriarchy-build' ) . '" class="form-control" />';
					$output .= '<div class="input-group-append"><input type="submit" name="submit" class="btn btn-primary" value="' . esc_attr__( 'Submit', 'matriarchy-build' ) . '" /></div>';
				$output .= '</div><!-- /.input-group -->';
			$output .= '</div><!-- /.col -->';
		$output .= '</form>';
	$output .= '</div><!-- /.row -->';
	return $output;
}
add_filter( 'the_password_form', 'matriarchy_build_password_form' );


if ( ! function_exists( 'matriarchy_build_comment' ) ) :
	/**
	 * Style Reply link.
	 *
	 * @since v1.0
	 */
	function matriarchy_build_replace_reply_link_class( $class ) {
		return str_replace( "class='comment-reply-link", "class='comment-reply-link btn btn-outline-secondary", $class );
	}
	add_filter( 'comment_reply_link', 'matriarchy_build_replace_reply_link_class' );

	/**
	 * Template for comments and pingbacks:
	 * add function to comments.php ... wp_list_comments( array( 'callback' => 'matriarchy_build_comment' ) );
	 *
	 * @since v1.0
	 */
	function matriarchy_build_comment( $comment, $args, $depth ) {
		$GLOBALS['comment'] = $comment;
		switch ( $comment->comment_type ) :
			case 'pingback':
			case 'trackback':
	?>
		<li class="post pingback">
			<p><?php esc_html_e( 'Pingback:', 'matriarchy-build' ); ?> <?php comment_author_link(); ?><?php edit_comment_link( esc_html__( 'Edit', 'matriarchy-build' ), '<span class="edit-link">', '</span>' ); ?></p>
	<?php
				break;
			default:
	?>
		<li <?php comment_class(); ?> id="li-comment-<?php comment_ID(); ?>">
			<article id="comment-<?php comment_ID(); ?>" class="comment">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<?php
							$avatar_size = ( '0' !== $comment->comment_parent ? 68 : 136 );
							echo get_avatar( $comment, $avatar_size );

							/* translators: 1: comment author, 2: date and time */
							printf(
								wp_kses_post( __( '%1$s, %2$s', 'matriarchy-build' ) ),
								sprintf( '<span class="fn">%s</span>', get_comment_author_link() ),
								sprintf( '<a href="%1$s"><time datetime="%2$s">%3$s</time></a>',
									esc_url( get_comment_link( $comment->comment_ID ) ),
									get_comment_time( 'c' ),
									/* translators: 1: date, 2: time */
									sprintf( esc_html__( '%1$s ago', 'matriarchy-build' ), human_time_diff( (int) get_comment_time( 'U' ), current_time( 'timestamp' ) ) )
								)
							);

							edit_comment_link( esc_html__( 'Edit', 'matriarchy-build' ), '<span class="edit-link">', '</span>' );
						?>
					</div><!-- .comment-author .vcard -->

					<?php if ( '0' === $comment->comment_approved ) : ?>
						<em class="comment-awaiting-moderation"><?php esc_html_e( 'Your comment is awaiting moderation.', 'matriarchy-build' ); ?></em>
						<br />
					<?php endif; ?>
				</footer>

				<div class="comment-content"><?php comment_text(); ?></div>

				<div class="reply">
					<?php
						comment_reply_link(
							array_merge(
								$args,
								array(
									'reply_text' => esc_html__( 'Reply', 'matriarchy-build' ) . ' <span>&darr;</span>',
									'depth'      => $depth,
									'max_depth'  => $args['max_depth'],
								)
							)
						);
					?>
				</div><!-- /.reply -->
			</article><!-- /#comment-## -->
		<?php
				break;
		endswitch;
	}

	/**
	 * Custom Comment form.
	 *
	 * @since v1.0
	 * @since v1.1: Added 'submit_button' and 'submit_field'
	 * @since v2.0.2: Added '$consent' and 'cookies'
	 */
	function matriarchy_build_custom_commentform( $args = array(), $post_id = null ) {
		if ( null === $post_id ) {
			$post_id = get_the_ID();
		}

		$commenter     = wp_get_current_commenter();
		$user          = wp_get_current_user();
		$user_identity = $user->exists() ? $user->display_name : '';

		$args = wp_parse_args( $args );

		$req      = get_option( 'require_name_email' );
		$aria_req = ( $req ? " aria-required='true' required" : '' );
		$consent  = ( empty( $commenter['comment_author_email'] ) ? '' : ' checked="checked"' );
		$fields   = array(
			'author'  => '<div class="form-floating mb-3">
							<input type="text" id="author" name="author" class="form-control" value="' . esc_attr( $commenter['comment_author'] ) . '" placeholder="' . esc_html__( 'Name', 'matriarchy-build' ) . ( $req ? '*' : '' ) . '"' . $aria_req . ' />
							<label for="author">' . esc_html__( 'Name', 'matriarchy-build' ) . ( $req ? '*' : '' ) . '</label>
						</div>',
			'email'   => '<div class="form-floating mb-3">
							<input type="email" id="email" name="email" class="form-control" value="' . esc_attr( $commenter['comment_author_email'] ) . '" placeholder="' . esc_html__( 'Email', 'matriarchy-build' ) . ( $req ? '*' : '' ) . '"' . $aria_req . ' />
							<label for="email">' . esc_html__( 'Email', 'matriarchy-build' ) . ( $req ? '*' : '' ) . '</label>
						</div>',
			'url'     => '',
			'cookies' => '<p class="form-check mb-3 comment-form-cookies-consent">
							<input id="wp-comment-cookies-consent" name="wp-comment-cookies-consent" class="form-check-input" type="checkbox" value="yes"' . $consent . ' />
							<label class="form-check-label" for="wp-comment-cookies-consent">' . esc_html__( 'Save my name, email, and website in this browser for the next time I comment.', 'matriarchy-build' ) . '</label>
						</p>',
		);

		$defaults = array(
			'fields'               => apply_filters( 'comment_form_default_fields', $fields ),
			'comment_field'        => '<div class="form-floating mb-3">
											<textarea id="comment" name="comment" class="form-control" aria-required="true" required placeholder="' . esc_attr__( 'Comment', 'matriarchy-build' ) . ( $req ? '*' : '' ) . '"></textarea>
											<label for="comment">' . esc_html__( 'Comment', 'matriarchy-build' ) . '</label>
										</div>',
			/** This filter is documented in wp-includes/link-template.php */
			'must_log_in'          => '<p class="must-log-in">' . sprintf( wp_kses_post( __( 'You must be <a href="%s">logged in</a> to post a comment.', 'matriarchy-build' ) ), wp_login_url( apply_filters( 'the_permalink', get_the_permalink( get_the_ID() ) ) ) ) . '</p>',
			/** This filter is documented in wp-includes/link-template.php */
			'logged_in_as'         => '<p class="logged-in-as">' . sprintf( wp_kses_post( __( 'Logged in as <a href="%1$s">%2$s</a>. <a href="%3$s" title="Log out of this account">Log out?</a>', 'matriarchy-build' ) ), get_edit_user_link(), $user->display_name, wp_logout_url( apply_filters( 'the_permalink', get_the_permalink( get_the_ID() ) ) ) ) . '</p>',
			'comment_notes_before' => '<p class="small comment-notes">' . esc_html__( 'Your Email address will not be published.', 'matriarchy-build' ) . '</p>',
			'comment_notes_after'  => '',
			'id_form'              => 'commentform',
			'id_submit'            => 'submit',
			'class_submit'         => 'btn btn-primary',
			'name_submit'          => 'submit',
			'title_reply'          => '',
			'title_reply_to'       => esc_html__( 'Leave a Reply to %s', 'matriarchy-build' ),
			'cancel_reply_link'    => esc_html__( 'Cancel reply', 'matriarchy-build' ),
			'label_submit'         => esc_html__( 'Post Comment', 'matriarchy-build' ),
			'submit_button'        => '<input type="submit" id="%2$s" name="%1$s" class="%3$s" value="%4$s" />',
			'submit_field'         => '<div class="form-submit">%1$s %2$s</div>',
			'format'               => 'html5',
		);

		return $defaults;
	}
	add_filter( 'comment_form_defaults', 'matriarchy_build_custom_commentform' );

endif;


/**
 * Nav menus.
 *
 * @since v1.0
 */
if ( function_exists( 'register_nav_menus' ) ) {
	register_nav_menus(
		array(
			'main-menu'   => 'Main Navigation Menu',
			'footer-menu' => 'Footer Menu',
		)
	);
}

// Custom Nav Walker: wp_bootstrap_navwalker().
$custom_walker = get_template_directory() . '/inc/wp_bootstrap_navwalker.php';
if ( is_readable( $custom_walker ) ) {
	require_once $custom_walker;
}

$custom_walker_footer = get_template_directory() . '/inc/wp_bootstrap_navwalker_footer.php';
if ( is_readable( $custom_walker_footer ) ) {
	require_once $custom_walker_footer;
}


/**
 * Loading All CSS Stylesheets and Javascript Files.
 *
 * @since v1.0
 */
function matriarchy_build_scripts_loader() {
	$theme_version = wp_get_theme()->get( 'Version' );

	// 1. Styles.
	wp_enqueue_style( 'style', get_template_directory_uri() . '/style.css', array(), $theme_version, 'all' );
	wp_enqueue_style( 'main', get_template_directory_uri() . '/assets/css/main.css', array(), $theme_version, 'all' ); // main.scss: Compiled Framework source + custom styles.
	wp_enqueue_style( 'bookly-main', get_template_directory_uri() . '/assets/css/bookly-main.css', array(), $theme_version, 'all');

	if ( is_rtl() ) {
		wp_enqueue_style( 'rtl', get_template_directory_uri() . '/assets/css/rtl.css', array(), $theme_version, 'all' );
	}

	// 2. Scripts.
	wp_enqueue_script( 'mainjs', get_template_directory_uri() . '/assets/js/main.bundle.js', array(), $theme_version, true );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'matriarchy_build_scripts_loader' );

// Skip the cart and redirect to check out url when clicking on Add to cart
add_filter ( 'add_to_cart_redirect', 'redirect_to_checkout' );
function redirect_to_checkout() {
    
	global $woocommerce;

	// Remove the default `Added to cart` message
	wc_clear_notices();

	return $woocommerce->cart->get_checkout_url();
	
}

/**
 * @snippet       Simplify Checkout if Only Virtual Products
 * @how-to        Get CustomizeWoo.com FREE
 * @sourcecode    https://businessbloomer.com/?p=78351
 * @author        Rodolfo Melogli
 * @compatible    WooCommerce 3.5.4
 * @donate $9     https://businessbloomer.com/bloomer-armada/
 */
 
add_filter( 'woocommerce_checkout_fields' , 'bbloomer_simplify_checkout_virtual' );
 
function bbloomer_simplify_checkout_virtual( $fields ) {
    
    $only_virtual = true;
    
    foreach( WC()->cart->get_cart() as $cart_item_key => $cart_item ) {
        // Check if there are non-virtual products
        if ( ! $cart_item['data']->is_virtual() ) $only_virtual = false;   
    }
     
    if( $only_virtual ) {
        unset($fields['billing']['billing_company']);
        unset($fields['billing']['billing_address_1']);
        unset($fields['billing']['billing_address_2']);
        unset($fields['billing']['billing_city']);
        unset($fields['billing']['billing_postcode']);
        unset($fields['billing']['billing_country']);
        unset($fields['billing']['billing_state']);
        unset($fields['billing']['billing_phone']);
        add_filter( 'woocommerce_enable_order_notes_field', '__return_false' );
    }
     
    return $fields;
}

// Modify Woocommerce Checkout Form
remove_action( 'woocommerce_checkout_order_review', 'woocommerce_checkout_payment', 20);
add_action( 'woocommerce_checkout_payment', 'woocommerce_checkout_payment', 20 );

// Set checkout form fields
add_filter('woocommerce_checkout_fields', 'update_checkout_fields');
 
function update_checkout_fields($fields) {
	$fields['billing']['billing_first_name']['placeholder'] = 'First Name';
	$fields['billing']['billing_first_name']['class'][0] = '';
	$fields['billing']['billing_last_name']['placeholder'] = 'Last Name';
	$fields['billing']['billing_last_name']['class'][0] = '';
	$fields['billing']['billing_email']['placeholder'] = 'Email Address ';
	$fields['billing']['billing_phone']['placeholder'] = 'Phone ';

	$fields['order']['order_comments']['placeholder'] = _x('', 'placeholder', 'woocommerce');
	$fields['order']['order_comments']['rows'] = 10;
 	return $fields;
}

// style stripe form elements
add_filter("wc_stripe_elements_styling", "snippetpress_style_stripe_1");
function snippetpress_style_stripe_1($styles) {
	$styles = array(
        "base" => array( 
            "color" => "#2d457c",
			"fontFamily" => "'Dharma', Fallback, monospace",
			"lineHeight" => "35px",
			"iconColor" => "#2d457c",
            "::placeholder" => array(
                "color" => "#2d457c",
            ),
        ),
    );
    return $styles;
}

// user redirects
add_action('template_redirect', 'redirection_function');
function redirection_function(){
    global $woocommerce;
	global $wp;
    if( is_cart() && WC()->cart->cart_contents_count == 0){
        wp_safe_redirect( home_url() ); 
        exit;
    } elseif ( is_cart() && WC()->cart->cart_contents_count > 0) {
		wp_safe_redirect( wc_get_checkout_url() );
		exit;
	}

	if( is_checkout() && 0 == sprintf(_n('%d', '%d', $woocommerce->cart->cart_contents_count, 'woothemes'), $woocommerce->cart->cart_contents_count) && !isset($_GET['key']) ) {
        wp_safe_redirect( home_url() ); 
        exit;
    }

	$request = explode('/', $wp->request);
	if (end($request) == 'my-account') {
		wp_safe_redirect(home_url('/my-account/upcoming-consultations'));
		exit;
	}
}

// Allow only 1 item in the cart
add_filter( 'woocommerce_add_cart_item_data', 'woo_custom_add_to_cart' );

	function woo_custom_add_to_cart( $cart_item_data ) {

    global $woocommerce;
    $woocommerce->cart->empty_cart();

    // Do nothing with the data and return
    return $cart_item_data;
}


// Create custom account endpoints

add_action('init', function() {
	add_rewrite_endpoint('past-consultations', EP_PAGES);
	add_rewrite_endpoint('upcoming-consultations', EP_PAGES);
	add_rewrite_endpoint('schedule', EP_PAGES);
	add_rewrite_endpoint('pricing', EP_PAGES);
	add_rewrite_endpoint('pro-past-consultations', EP_PAGES);
	add_rewrite_endpoint('booking-details', EP_PAGES);
});

add_action('woocommerce_account_past-consultations_endpoint', function() {
	
	$current_page    = empty( $current_page ) ? 1 : absint( $current_page );
		$customer_orders = wc_get_orders(
			apply_filters(
				'woocommerce_my_account_my_orders_query',
				array(
					'customer' => get_current_user_id(),
					'page'     => $current_page,
					'paginate' => true,
				)
			)
		);

		wc_get_template(
			'myaccount/past-consultations.php',
			array(
				'current_page'    => absint( $current_page ),
				'customer_orders' => $customer_orders,
				'has_orders'      => 0 < $customer_orders->total,
			)
		);
});

add_action('woocommerce_account_upcoming-consultations_endpoint', function() {
	
	$current_page    = empty( $current_page ) ? 1 : absint( $current_page );
		$customer_orders = wc_get_orders(
			apply_filters(
				'woocommerce_my_account_my_orders_query',
				array(
					'customer' => get_current_user_id(),
					'page'     => $current_page,
					'paginate' => true,
				)
			)
		);

		wc_get_template(
			'myaccount/upcoming-consultations.php',
			array(
				'current_page'    => absint( $current_page ),
				'customer_orders' => $customer_orders,
				'has_orders'      => 0 < $customer_orders->total,
			)
		);
});

add_action('woocommerce_account_schedule_endpoint', function() {
	wc_get_template('myaccount/schedule.php');
});

add_action('woocommerce_account_pricing_endpoint', function() {
	wc_get_template('myaccount/pricing.php');
});

add_action('woocommerce_account_pro-past-consultations_endpoint', function() {
	wc_get_template('myaccount/pro/past-consultations.php');
});

add_action('woocommerce_account_booking-details_endpoint', function() {
	wc_get_template('myaccount/pro/booking-details.php');
});

// Remove account links
add_filter('woocommerce_account_menu_items', 'remove_my_account_links');
function remove_my_account_links($menu_links) {
	unset($menu_links['downloads']);
	unset($menu_links['orders']);
	unset($menu_links['edit-address']);
	unset($menu_links['dashboard']);
	unset($menu_links['customer-logout']);

	return $menu_links;
}

// Edit account settings order
function my_account_menu_order() {
	$menuOrder = array(
		'edit-account'    	=> __( 'Account Details', 'woocommerce' ),
		'payment-methods'	=> __( 'Payment Methods', 'woocommerce'),
	);
	return $menuOrder;
}
add_filter ( 'woocommerce_account_menu_items', 'my_account_menu_order' );

/* Create Pro Member User Role */
add_role(
    'pro_user', //  System name of the role.
    __( 'Pro'  ), // Display name of the role.
    array(
        'read'  => true,
        'delete_posts'  => false,
        'delete_published_posts' => false,
        'edit_posts'   => false,
        'publish_posts' => false,
        'upload_files'  => true,
        'edit_pages'  => false,
        'edit_published_pages'  =>  false,
        'publish_pages'  => false,
        'delete_published_pages' => false, // This user will NOT be able to  delete published pages.
    )
);



/**
 * @snippet       Add First & Last Name to My Account Register Form - WooCommerce
 * @how-to        Get CustomizeWoo.com FREE
 * @author        Rodolfo Melogli
 * @compatible    WC 3.9
 * @donate $9     https://businessbloomer.com/bloomer-armada/
 */
  
///////////////////////////////
// 1. ADD FIELDS
  
add_action( 'woocommerce_register_form_start', 'bbloomer_add_name_woo_account_registration' );
  
function bbloomer_add_name_woo_account_registration() {
    ?>
	<p class="subtext d-none">or with email</p>
    <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
    <label for="reg_billing_first_name" class="visually-hidden"><?php _e( 'First Name', 'woocommerce' ); ?> <span class="required">*</span></label>
    <input type="text" class="input-text" name="billing_first_name" id="reg_billing_first_name" placeholder="First Name" value="<?php if ( ! empty( $_POST['billing_first_name'] ) ) esc_attr_e( $_POST['billing_first_name'] ); ?>" />
    </p>
  
    <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
    <label for="reg_billing_last_name" class="visually-hidden"><?php _e( 'Last Name', 'woocommerce' ); ?> <span class="required">*</span></label>
    <input type="text" class="input-text" name="billing_last_name" id="reg_billing_last_name" placeholder="Last Name" value="<?php if ( ! empty( $_POST['billing_last_name'] ) ) esc_attr_e( $_POST['billing_last_name'] ); ?>" />
    </p>
  
    <div class="clear"></div>
  
    <?php
}
  
///////////////////////////////
// 2. VALIDATE FIELDS
  
add_filter( 'woocommerce_registration_errors', 'bbloomer_validate_name_fields', 10, 3 );
  
function bbloomer_validate_name_fields( $errors, $username, $email ) {
    if ( isset( $_POST['billing_first_name'] ) && empty( $_POST['billing_first_name'] ) ) {
        $errors->add( 'billing_first_name_error', __( '<strong>Error</strong>: First name is required!', 'woocommerce' ) );
    }
    if ( isset( $_POST['billing_last_name'] ) && empty( $_POST['billing_last_name'] ) ) {
        $errors->add( 'billing_last_name_error', __( '<strong>Error</strong>: Last name is required!.', 'woocommerce' ) );
    }
    return $errors;
}
  
///////////////////////////////
// 3. SAVE FIELDS
  
add_action( 'woocommerce_created_customer', 'bbloomer_save_name_fields' );
  
function bbloomer_save_name_fields( $customer_id ) {
    if ( isset( $_POST['billing_first_name'] ) ) {
        update_user_meta( $customer_id, 'billing_first_name', sanitize_text_field( $_POST['billing_first_name'] ) );
        update_user_meta( $customer_id, 'first_name', sanitize_text_field($_POST['billing_first_name']) );
    }
    if ( isset( $_POST['billing_last_name'] ) ) {
        update_user_meta( $customer_id, 'billing_last_name', sanitize_text_field( $_POST['billing_last_name'] ) );
        update_user_meta( $customer_id, 'last_name', sanitize_text_field($_POST['billing_last_name']) );
    }
  
}

// post checkout function
add_action( 'woocommerce_thankyou', 'actions_after_checkout');
function actions_after_checkout( $order_id ){
    $order = wc_get_order( $order_id );
	$hasConsultation = false;
	global $wpdb;

    if ( ! $order->has_status( 'failed' ) ) {
		order_id_to_bookly($order_id);

		foreach ($order->get_items() as $item_id => $item) {
			$data =  $item->get_meta("bookly");

			if (isset($data['items'])) {
				$staffId = $data['items'][0]['staff_ids'][0];
       			$staffInfo = $wpdb->get_results('SELECT * FROM wp_bookly_staff WHERE id="'.$staffId.'";');
        		$staffName = $staffInfo[0]->full_name;
				$staff = str_replace(" ", "", $staffName);
			}

			$is_consultation = strpos($item->get_name(), 'Consultation') != false;
			if ($is_consultation) { $hasConsultation = true; }
		}

		$url = wc_get_account_endpoint_url("view-order/$order_id?pid=$order_id&assignee=$staff&");

		if ($hasConsultation && $order->get_item_count() == 1) {
			wp_safe_redirect( $url );
		}

        exit;
    }
}

// Do not require Display Name in account details
add_filter('woocommerce_save_account_details_required_fields', 'wc_save_account_details_required_fields' );
function wc_save_account_details_required_fields( $required_fields ){
    unset( $required_fields['account_display_name'] );
    return $required_fields;
}

// Allow editors to use ACF
function my_acf_settings_capability( $capability ) {
    return 'edit_pages';
}
add_filter('acf/settings/capability', __NAMESPACE__ . '\\my_acf_settings_capability');

// Remove subtotal from order confirmation email
add_filter( 'woocommerce_get_order_item_totals', 'reordering_order_item_totals', 10, 3 );
function reordering_order_item_totals( $total_rows, $order, $tax_display ){
    $shipping = $total_rows['cart_subtotal'];
    $order_total = $total_rows['order_total'];

    unset($total_rows['cart_subtotal']);
    return $total_rows;
}

// filters js
add_action('wp_enqueue_scripts', function(){
	wp_enqueue_script('filters', get_template_directory_uri() . '/assets/js/filters.js', '', '', true);

	if (!wp_is_mobile()) {
	wp_enqueue_script('sticky', get_template_directory_uri() . '/assets/js/sticky.js', '', '', true);
	}

});

/**
 * Gives a nicely-formatted list of timezone strings.
 *
 * @since 2.9.0
 * @since 4.7.0 Added the `$locale` parameter.
 *
 * @param string $selected_zone Selected timezone.
 * @param string $locale        Optional. Locale to load the timezones in. Default current site locale.
 * @return string
 */
function matriarchy_timezone_choice( $selected_zone, $locale = null ) {
	static $mo_loaded = false, $locale_loaded = null;

	$continents = array( 'America' );

	// Load translations for continents and cities.
	if ( ! $mo_loaded || $locale !== $locale_loaded ) {
		$locale_loaded = $locale ? $locale : get_locale();
		$mofile        = WP_LANG_DIR . '/continents-cities-' . $locale_loaded . '.mo';
		unload_textdomain( 'continents-cities' );
		load_textdomain( 'continents-cities', $mofile );
		$mo_loaded = true;
	}

	$zonen = array();
	foreach ( timezone_identifiers_list() as $zone ) {
		$zone = explode( '/', $zone );
		if ( ! in_array( $zone[0], $continents, true ) ) {
			continue;
		}

		// This determines what gets set and translated - we don't translate Etc/* strings here, they are done later.
		$exists    = array(
			0 => ( isset( $zone[0] ) && $zone[0] ),
			1 => ( isset( $zone[1] ) && $zone[1] ),
			2 => ( isset( $zone[2] ) && $zone[2] ),
		);
		$exists[3] = ( $exists[0] && 'Etc' !== $zone[0] );
		$exists[4] = ( $exists[1] && $exists[3] );
		$exists[5] = ( $exists[2] && $exists[3] );

		// phpcs:disable WordPress.WP.I18n.LowLevelTranslationFunction,WordPress.WP.I18n.NonSingularStringLiteralText
		$zonen[] = array(
			'continent'   => ( $exists[0] ? $zone[0] : '' ),
			'city'        => ( $exists[1] ? $zone[1] : '' ),
			'subcity'     => ( $exists[2] ? $zone[2] : '' ),
			't_continent' => ( $exists[3] ? translate( str_replace( '_', ' ', $zone[0] ), 'continents-cities' ) : '' ),
			't_city'      => ( $exists[4] ? translate( str_replace( '_', ' ', $zone[1] ), 'continents-cities' ) : '' ),
			't_subcity'   => ( $exists[5] ? translate( str_replace( '_', ' ', $zone[2] ), 'continents-cities' ) : '' ),
			'file'		=> ''
		);
		// phpcs:enable
	}
	usort( $zonen, '_wp_timezone_choice_usort_callback' );

	$structure = array();

	if ( empty( $selected_zone ) ) {
		$structure[] = '<option selected="selected" value="">' . __( 'Select a city' ) . '</option>';
	}

	foreach ( $zonen as $key => $zone ) {
		// Build value in an array to join later.
		$value = array( $zone['continent'] );

		if ( empty( $zone['city'] ) ) {
			// It's at the continent level (generally won't happen).
			$display = $zone['t_continent'];
		} else {
			// It's inside a continent group.

			// Continent optgroup.
			if ( ! isset( $zonen[ $key - 1 ] ) || $zonen[ $key - 1 ]['continent'] !== $zone['continent'] ) {
				$label       = $zone['t_continent'];
			}

			// Add the city to the value.
			$value[] = $zone['city'];

			$display = $zone['t_city'];
			if ( ! empty( $zone['subcity'] ) ) {
				// Add the subcity to the value.
				$value[]  = $zone['subcity'];
				$display .= ' - ' . $zone['t_subcity'];
			}
		}

		// Build the value.
		$value    = implode( '/', $value );
		$selected = '';
		if ( $value === $selected_zone ) {
			$selected = 'selected="selected" ';
		}
		
		// 4.4.2022 - filters timezone options to find and display regions by timezone labels
		$regions = ['America/New_York', 'America/Chicago', 'America/Denver', 'America/Pheonix', 'America/Los_Angeles', 'America/Anchorage', 'America/Adak', 'Pacific/Honolulu', 'America/Goose_Bay'];

		if (in_array($value, $regions)) {
			if ($value == 'America/New_York') {
				$display = 'Eastern Time';
			}
			if ($value == 'America/Chicago') {
				$display = 'Central Time';
			}
			if ($value == 'America/Denver') {
				$display = 'Mountain Time';
			}
			if ($value == 'America/Pheonix') {
				$display = 'Mountain (No Daylight Savings Time)';
			}
			if ($value == 'America/Los_Angeles') {
				$display = 'Pacific Time';
			}
			if ($value == 'America/Anchorage') {
				$display = 'Alaska Time';
			}
			if ($value == 'America/Adak') {
				$display = 'Hawaii-Aleutian Daylight Time';
			}
			if ($value == 'Pacific/Honolulu') {
				$display = 'Hawaii Standard Time';
			}
			if ($value == 'America/Goose_Bay') {
				$display = 'Atlantic Daylight Time';
			}
			$structure[] = '<option ' . $selected . 'value="' . esc_attr( $value ) . '">' . esc_html($display) . '</option>';
		}

		// Close continent optgroup.
		if ( ! empty( $zone['city'] ) && ( ! isset( $zonen[ $key + 1 ] ) || ( isset( $zonen[ $key + 1 ] ) && $zonen[ $key + 1 ]['continent'] !== $zone['continent'] ) ) ) {
			$structure[] = '</optgroup>';
		}
	}

	// Do UTC.
	$structure[] = '<optgroup label="' . esc_attr__( 'UTC' ) . '">';
	$selected    = '';
	if ( 'UTC' === $selected_zone ) {
		$selected = 'selected="selected" ';
	}
	$structure[] = '<option ' . $selected . 'value="' . esc_attr( 'UTC' ) . '">' . __( 'UTC' ) . '</option>';
	$structure[] = '</optgroup>';

	return implode( "\n", $structure );
}

// adds order id to Bookly appointments table
function order_id_to_bookly($order_id) {
	global $wpdb;
	$order = wc_get_order($order_id);
	$orderId = $order->get_id();

	foreach ($order->get_items() as $item_id => $item) {
		$data = wc_get_order_item_meta( $item_id, 'bookly' );

		if ( isset ( $data['processed'], $data['ca_ids'] ) && $data['processed'] ) {
			/** @var Bookly\Lib\Entities\CustomerAppointment[] $ca_list */
			$ca_list = Bookly\Lib\Entities\CustomerAppointment::query()->whereIn( 'id', $data['ca_ids'] )->find();
			foreach ( $ca_list as $ca ) {
				$appointmentId = $ca->getAppointmentId();
				$wpdb->query($wpdb->prepare("UPDATE wp_bookly_appointments SET order_id='$orderId' WHERE order_id IS NULL AND id=$appointmentId"));
			}
		}
	}
}

// adds custom color palette to ACF fields
function klf_acf_input_admin_footer() { ?>
	<script type="text/javascript">
	(function($) {
	acf.add_filter('color_picker_args', function( args, $field ){
	// add the hexadecimal codes here for the colors you want to appear as swatches
	args.palettes = ['#2d457c', '#f7cbad', '#fbf8ea', '#555433', '#bbb69b', '#000000', '#ffffff'];
	// return colors
	return args;
	});
	})(jQuery);
	</script>
<?php }
add_action('acf/input/admin_footer', 'klf_acf_input_admin_footer');

// lets Editors manage users
function editor_manage_users() {
	if (get_option('add_cap_editor_once') != 'done') {
		$edit_editor = get_role('editor');
		$edit_editor->add_cap('edit_users');
		$edit_editor->add_cap('list_users');
		$edit_editor->add_cap('promote_users');
		$edit_editor->add_cap('create_users');
		$edit_editor->add_cap('add_users');
		$edit_editor->add_cap('delete_users');

		update_option('add_cap_editor_once', 'done');
	}
}
add_action('init', 'editor_manage_users');

// hide administrators from user list
add_action('pre_user_query', 'isa_pre_user_query');
function isa_pre_user_query($user_search) {
	$user = wp_get_current_user();

	if (!current_user_can('manage_options')) {
		global $wpdb;

		$user_search->query_where =
			str_replace('WHERE 1=1',
			"WHERE 1=1 AND {$wpdb->users}.ID IN (
				SELECT {$wpdb->usermeta}.user_id FROM $wpdb->usermeta
					WHERE {$wpdb->usermeta}.meta_key = '{$wpdb->prefix}capabilities'
					AND {$wpdb->usermeta}.meta_value NOT LIKE '%administrator%')",
			$user_search->query_where
		);
	}
}

function get_current_url() {
    $pageURL = 'http';
    if (isset($_SERVER["HTTPS"]) && $_SERVER["HTTPS"] == "on") {
        $pageURL .= "s";
    }
    $pageURL .= "://";
    if ($_SERVER["SERVER_PORT"] != "۸۰") {
        $pageURL .= $_SERVER["SERVER_NAME"] . ":" . $_SERVER["SERVER_PORT"] . $_SERVER["REQUEST_URI"];
    } else {
        $pageURL .= $_SERVER["SERVER_NAME"] . $_SERVER["REQUEST_URI"];
    }
    return $pageURL;
}

$url = get_current_url();

if (strpos($url, '/view-order/')) {
	add_filter('forminator_field_hidden_field_value', function ($value, $saved_value, $field) {
		$pro = $_GET['assignee'];

		$hidden_field_id = 'hidden-1'; // Pro Name
		$value = $pro;

		return $value;
	}, 20, 3 );
}

?>
