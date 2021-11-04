# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
# let sidebar = document.querySelector(".sidebar");
  # let closeBtn = document.querySelector("#btn");
  # let searchBtn = document.querySelector(".bx-search");

  # closeBtn.addEventListener("click", ()=>{
  #   sidebar.classList.toggle("open");
  #   menuBtnChange();//calling the function(optional)
  # });

  # searchBtn.addEventListener("click", ()=>{ // Sidebar open when you click on the search iocn
  #   sidebar.classList.toggle("open");
  #   menuBtnChange(); //calling the function(optional)
  # });

  # // following are the code to change sidebar button(optional)
  # function menuBtnChange() {
  #  if(sidebar.classList.contains("open")){
  #    closeBtn.classList.replace("bx-menu", "bx-menu-alt-right");
  #  }else {
  #    closeBtn.classList.replace("bx-menu-alt-right","bx-menu");
  #  }
  # }
$(document).ready ->
  menuBtnChange = ->
    if $(".sidebar").hasClass("open") is true
      $("#btn").addClass("bx-menu-alt-right").removeClass("bx-menu")
    else 
      $("#btn").removeClass("bx-menu-alt-right").addClass("bx-menu")
    # return alert('elo')

  $('.sidebar').click ->
    $(this).toggleClass("open")
    menuBtnChange()
    # return  

  page = 1
  isBusy = false

  getImage = (array) -> 
    image = ''
    if array.length > 0
      $.each array, (key, value) ->
        image += "
          <div class='image'>
            <image src='#{value}'/>
          </div>
        "
      return image
    else
      return image

  $(window).scroll ->
    if $(window).scrollTop() == $(document).height() - $(window).height() 
      $(".post-placeholder").removeClass('hidden')
      if !isBusy 
        data = {
          page: page += 1
        }
        $.ajax
          url: '/v1/user_posts',
          type: 'GET',
          data: data,
          success: (res)->
            $(".post-placeholder").addClass('hidden')
            html = ''
            if res.data.current_page >= res.data.total_page
              isBusy = true
            $.each res.data.user_posts, (key, value) ->
              html += "
                <div class='block-post'>
                  <div class='user-post d-flex justify-content-between align-items-center'>
                    <div class='avata d-flex justify-content-start align-items-center'>
                      <img src='/assets/null-avata.png' alt='profileImg'>
                      <p>#{value['user']['full_name']}</p>
                    </div>
                    <p>#{moment(value['created_at']).fromNow()}</p>
                  </div>
                  <div class='content-post'>
                    <p class='title'>#{value['post']['title']}</p>
                    <p class='content'>#{value['post']['content']}</p>
                    #{getImage(value['post']['images'])}
                  </div>
                  <div class='comment'>
                    <div class='count-likes-comments d-flex justify-content-start align-items-center'>
                      <p>0 Likes</p>
                      <p>0 Comments</p>
                    </div>
                    <div class='icon-action d-flex justify-content-start align-items-center'>
                      <p class='pointer'><i class='far fa-thumbs-up'></i> like</p>
                      <p class='pointer'><i class='far fa-comment'></i> Comment</p>
                    </div>
                    <div class='avata-comment d-flex justify-content-start align-items-center'>
                      <img src='/assets/null-avata.png' alt='profileImg'>
                      <input type='text' class='form-control'>
                      <input type='button' class='btn-post form-control' value='Post'>
                    </div>
                  </div>
                </div>
              "
            $(".home-content").append(html)
                  
            toastSuccess(res["message"])
          error: (err)->  
            console.log(err)  
    

