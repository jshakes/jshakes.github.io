$ ->
  
  $(".toggle-about-panel").on "click", ->
    
    $(this).toggleClass("icon-arrow-up");
    $(".about-panel-text").slideToggle();