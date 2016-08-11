//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require jquery-ui/datepicker
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

$("#dt5").datepicker({
        format: 'mm-dd-yyyy'
    })
.on('changeDate', function(ev){
  $('#dt5').datepicker('hide');
});
