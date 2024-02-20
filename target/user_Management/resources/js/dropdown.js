$(document).ready(function() {
	$('.dropdown-toggle').dropdown(); // Initialize Bootstrap dropdown

	$('.dropdown-toggle').on('click', function() {
		// Remove the 'nav-link-show' class from all other dropdown toggles
		$('.dropdown-toggle').not(this).removeClass('nav-link-show');

		// Toggle the 'nav-link-show' class on the clicked dropdown toggle
		$(this).toggleClass('nav-link-show');
	});
});

