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
	});
} )();