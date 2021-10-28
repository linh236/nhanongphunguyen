@toastSuccess = (message) ->
  html = "<div class='toast-body'>" + message + "</div>"
  $('.toast-success').html(html)
  $('.toast-success').toast('show')
@toastWarning = (warning) ->
  html = "<div class='toast-body'>" + warning + "</div>"
  $('.toast-warning').html(html)
  $('.toast-warning').toast('show')
@toastDanger = (danger) ->
  html = "<div class='toast-body'>" + danger + "</div>"
  $('.toast-danger').html(html)
  $('.toast-danger').toast('show')