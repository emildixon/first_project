var refreshRating = function () {
  // Initialize Raty
  $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
  $('.rated').raty( { path: '/assets', readOnly: true, score: function() {
    return $(this).attr('data-score');
    }
  });
}

$(document).on('turbolinks:load', function (){
  //Initialize elevateZoom
  $('.img-zoom').elevateZoom();
  refreshRating();
});