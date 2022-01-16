# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', ->
  $(".dots-menu").click -> 
    $room_id = $(this).data('room-id')
    console.log($room_id)
    $(".chose-#{$room_id}").slideToggle(true)