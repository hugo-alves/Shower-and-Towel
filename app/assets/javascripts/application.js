//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .
$(document).ready(function() {
$('.togglebutton').click(function() {
$('.form-inputs').toggleClass('hidden');
$('.form-actions').toggleClass('hidden');
});
});
