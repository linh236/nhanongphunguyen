$(document).on 'turbolinks:load', ->
  $room_id = $(".room-name").data("room_id");
  $current_user_id = $(".room-name").data("current_user_id");
  App.room = App.cable.subscriptions.create {channel: "RoomChannel", room_id: $room_id} ,
    connected: ->
      # Called when the subscription is ready for use on the server
      console.log("connected...")

    disconnected: ->
      # Called when the subscription has been terminated by the server

    received: (data) ->
      # Called when there's incoming data on the websocket for this channel
      $html
      if $current_user_id == data.message.user_id
        $html = data.mine
      else 
        $html = data.theirs
      $(".message-list").append($html)
      $(".input-message ").val('')
      $(".send-message ").removeAttr("disabled")
