$(function() {
  var return_to_top = $('#return-to-top');
  return_to_top.hide();

  $(window).scroll(function() {
    if ($(this).scrollTop() > 100) {
      return_to_top.fadeIn();
    } else {
      return_to_top.fadeOut();
    }
  });

  return_to_top.click(function(e) {
    e.preventDefault();
    $('body, html').animate({
      scrollTop: 0
    }, 400);
  });
});
