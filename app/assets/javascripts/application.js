//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require moment
//= require bootstrap-datetimepicker
//= require pickers
//= require underscore
//= require gmaps/google
//= require_tree .
$(document).ready(function() {
	$('.togglebutton').click(function() {
		$('.form-inputs').toggleClass('hidden');
		$('.form-actions').toggleClass('hidden');
		$('#btn-signup-email').toggleClass('hidden');
	});
});
