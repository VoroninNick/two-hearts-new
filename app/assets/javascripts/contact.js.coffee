# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  # contact page
  $('#contact-page #map-section #map').each ->
    #google maps
    lat = 49.87213
    lng = 23.92897
    myLatlng = new google.maps.LatLng(lat, lng)
    myOptions =
      zoom: 16
      center: myLatlng
      scrollwheel: false
      mapTypeId: google.maps.MapTypeId.ROADMAP


    map = new google.maps.Map(document.getElementById("map"), myOptions)
    marker = new google.maps.Marker(
      position: myLatlng
      map: map
      title: "Wood Technic"
      #icon: '/assets/logo-for-map.png'
    )



  $('#contact-page #contact-form-section form').each (index, element) ->



    validationSettings =
      errorMessagePosition: "element"
      borderColorOnError: ""


    #alert('Valid!');
    #$("#new_order").submit();
    $("#contact-page #contact-form-section form").submit(->
      return true  if $(this).validate(false, validationSettings)
      false
    ).validateOnBlur(false, validationSettings).showHelpOnFocus()