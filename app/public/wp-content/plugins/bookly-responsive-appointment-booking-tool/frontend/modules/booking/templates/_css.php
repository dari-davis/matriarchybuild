<?php if ( ! defined( 'ABSPATH' ) ) exit; // Exit if accessed directly
use Bookly\Lib\Utils\Common;
$color = get_option( 'bookly_app_color', '#f4662f' );
$checkbox_img = plugins_url( 'frontend/resources/images/checkbox.png', \Bookly\Lib\Plugin::getMainFile() );
$custom_css = trim( get_option( 'bookly_app_custom_styles' ) );
?>
    <style type="text/css">
        /* Color */
        
    </style>

<?php if ( $custom_css != '' ) : ?>
    <style type="text/css">
        <?php echo Common::css( $custom_css ) ?>
    </style>
<?php endif ?>