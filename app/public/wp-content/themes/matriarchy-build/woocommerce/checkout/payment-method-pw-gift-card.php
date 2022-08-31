<?php

/*
Copyright (C) Pimwick, LLC

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
*/

defined( 'ABSPATH' ) or exit;

global $pw_gift_cards_redeeming;
if ( $pw_gift_cards_redeeming->cart_contains_gift_card() && 'yes' !== get_option( 'pwgc_allow_gift_card_purchasing', 'yes' ) ) {
    return;
}

if ( 'review_order_before_submit' === get_option( 'pwgc_redeem_checkout_location', 'review_order_before_submit' ) ) {
    ?>
    <div id="pwgc-redeem-gift-card-form ms-md-2">
        <form id="pwgc-redeem-form">
            <label class="sr-only" for="pwgc-redeem-gift-card-number"><?php _e( 'Have a gift card?', 'pw-woocommerce-gift-cards' ); ?></label>
            <div id="pwgc-redeem-error" style="color: red;"></div>
            <div class="d-flex flex-column flex-lg-row">
                <input class="mb-2 mb-lg-0" type="text" id="pwgc-redeem-gift-card-number" name="card_number" autocomplete="off" placeholder="<?php esc_html_e( 'Gift Card Number', 'pw-woocommerce-gift-cards' ); ?>">
                <input class="button" type="submit" id="pwgc-redeem-button" data-wait-text="<?php esc_html_e( 'Please wait...', 'pw-woocommerce-gift-cards' ); ?>" value="<?php esc_html_e( 'Apply Gift Card', 'pw-woocommerce-gift-cards' ); ?>">
            </div>
        </form>
    </div>
    <script>
        jQuery(function() {
            jQuery('#pwgc-redeem-form').off('submit.pimwick').on('submit.pimwick', function(e) {
                pwgc_checkout_redeem_gift_card(jQuery('#pwgc-redeem-button'));
                e.preventDefault();
                return false;
            });
        });
    </script>
    <?php
}
