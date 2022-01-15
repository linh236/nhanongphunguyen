@toastSuccess = (message) ->
  Toastify({
    text: message,
    duration: 3000,
    newWindow: true,
    close: true,
    offset: {
      top: 100,
    },
    gravity: "top",
    position: "right",
    stopOnFocus: true,
    style: {
      background: "linear-gradient(to right, #00b09b, #96c93d)",
    }
  }).showToast();
@toastWarning = (warning) ->
  html = "<div class='toast-body'>" + warning + "</div>"
  $('.toast-warning').html(html)
  $('.toast-warning').toast('show')
@toastDanger = (danger) ->
  html = "<div class='toast-body'>" + danger + "</div>"
  $('.toast-danger').html(html)
  $('.toast-danger').toast('show')