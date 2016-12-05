//Add fadeout for alerts and notices
$(document).on("turbolinks:load", function(){
  $(".alert").delay(4000).fadeOut("slow");
});

$(document).on("turbolinks:load", function(){
  $(".notice").delay(4000).fadeOut("slow");
});