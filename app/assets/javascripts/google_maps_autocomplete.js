$(document).ready(function() {
  var bathroom_address = $('#bathroom_address').get(0)
  if (bathroom_address) {
    var autocomplete = new google.maps.places.Autocomplete(bathroom_address, { types: ['geocode'] });
    google.maps.event.addListener(autocomplete, 'place_changed', onPlaceChanged);
    google.maps.event.addDomListener(bathroom_address, 'keydown', function(e) {
      if (e.keyCode == 13) {
        e.preventDefault(); // Do not submit the form on Enter.
      }
    });
  }
});

function onPlaceChanged() {
  var place = this.getPlace();
  console.log("place")
  var components = getAddressComponents(place);

  $('#bathroom_address').trigger('blur').val(components.address);
}
