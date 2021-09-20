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
    return
  return


  
    # return
  

