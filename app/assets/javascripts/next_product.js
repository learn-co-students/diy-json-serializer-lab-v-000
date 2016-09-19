function nextProduct() {
  $('.js-next').on('click', function() {
    var productId = parseInt($('.js-next').attr('data-id')) + 1;
    $.get('/products/' + productId + '/data', function(data) {
      $('h3').text(data.name);
      $('.js-next').attr('data-id', data.id);      
    });
  })
}