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
		if ($('.woocommerce-checkout').length) {
			let firstName = document.cookie.split('; ').find(row => row.startsWith('firstname=')).split('=')[1];
			let lastName = document.cookie.split('; ').find(row => row.startsWith('lastname=')).split('=')[1];
			$('#billing_first_name').attr('value', firstName);
			$('#billing_last_name').attr('value', lastName);

			let orderData = document.cookie.split('; ').find(row => row.startsWith('orderData')).split('=')[1];
			console.log(orderData);
		}
	});
} )();