$(document).ready ->
  $(".edit").click -> 
    user_id = $(this).data('id')
    $(".isEdit").removeAttr("disabled")
    $(this).addClass("save")
    $(this).text('Save')
    $(this).removeClass("edit")
    $(".save").click -> 
      data = {
        full_name: $(".full_name").val()
        email: $(".email").val()
        birth: $(".birth").val()
        gender: $(".gender").val()
        address: $(".address").val()
      }
     
      $.ajax
        url: '/v1/user/' + user_id,
        type: 'PUT',
        data: data,
        success: (res)->
          toastSuccess(res["message"])
        error: (err)->  
          console.log(err)

      # window.location.reload()
