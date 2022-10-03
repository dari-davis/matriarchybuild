// Webpack Imports
import * as bootstrap from 'bootstrap';


( function () {
	'use strict';

	// Focus input if Searchform is empty
	[].forEach.call( document.querySelectorAll( '.search-form' ), ( el ) => {
		el.addEventListener( 'submit', function ( e ) {
			var search = el.querySelector( 'input' );
			if ( search.value.length < 1 ) {
				e.preventDefault();
				search.focus();
			}
		} );
	} );

	// Initialize Popovers: https://getbootstrap.com/docs/5.0/components/popovers
	var popoverTriggerList = [].slice.call( document.querySelectorAll( '[data-bs-toggle="popover"]' ) );
	var popoverList = popoverTriggerList.map( function ( popoverTriggerEl ) {
		return new bootstrap.Popover( popoverTriggerEl, {
			trigger: 'focus',
		} );
	} );

	// set billing name and address from Bookly data
	$(document).ready(function() {
		if ($('.woocommerce-account').length) {
			$('[data-upcoming-consultations]').on('click', function() {
				console.log('upcoming');
			});
			$('[data-past-consultations]').on('click', function() {
				console.log('past');
			});
		}

		if ($('.woocommerce-checkout').length) {
			let firstName = document.cookie.split('; ').find(row => row.startsWith('firstname=')).split('=')[1];
			let lastName = document.cookie.split('; ').find(row => row.startsWith('lastname=')).split('=')[1];
			$('#billing_first_name').attr('value', firstName);
			$('#billing_last_name').attr('value', lastName);

			$('.coupon-form-input').on('change', function() {
				$('form.checkout_coupon input[name="coupon_code"]').val($(this).val());
			});
			
			$('.coupon-form-submit').on('click', function() {
				$('form.checkout_coupon').submit();
			});
		}

		if ($('.woocommerce-checkout').length) {
			$('body').on('applied_coupon_in_checkout removed_coupon_in_checkout', function() {
				location.reload();
			});
	
			$('form.woocommerce-checkout').on( 'click', "#place_order", function(){
				var pro = $('.consultation-card__pro').text();
				var total = parseFloat($('[data-order-total]').find('bdi').text().substring(1));
				console.log(total);
				console.log(typeof(total));

				window.dataLayer.push({
					'event': 'purchase',
					'ecommerce': {
						'transaction_id': '12345',
						'currency': 'USD',
						'tax': 0,
						'value' : total,
						'shipping': 0,
						'items': [{
							'item_name': `Consultation with ${pro}`,
							'item_category': 'Consultation',
							'price': total,
							'quantity': 1
						}]
					}
				});
			});
		}
	});


	$('.header__hamburger').on('click', function(e) {
		e.preventDefault();
		$('.header__top').toggleClass('invisible');
		$('[data-menu-icon]').toggleClass('invisible');
	});

} )();