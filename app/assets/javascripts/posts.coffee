# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  # getFileNameWithExt(event) -> 
  #   if !event || !event.target || !event.target.files || event.target.files.length
  #     return  
  #   name = event.target.files[0].name
  #   lastDot = name.lastIndexOf('.')

  #   fileName = name.substring(0, lastDot)
  #   ext = name.substring(lastDot + 1)
  $('.post').click ->
    url = $(this).data('url');
    console.log($('.post-images').val())
    data = {
      title: $('.post-title').val()
      content: $('.post-content').val()
      youtube_link: $('.post-youtube').val()
      facebook_link: $('.post-facebook').val()
      twitter_link: $('.post-twitter').val()
      tiktok_link: $('.post-tiktok').val()
    };
    $.ajax
      url: url,
      type: 'POST',
      data: data,
      success: (res)->
        $('#commonModal').modal('toggle');
        toastSuccess(res["message"])
        setTimeout ->
          window.location.reload()
        ,3000
      error: (err)->  
        console.log(err)

 