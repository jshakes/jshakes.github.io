$(function() {
  return $(".toggle-about-panel").on("click", function() {
    $(this).toggleClass("icon-arrow-up");
    return $(".about-panel-text").slideToggle();
  });
});
