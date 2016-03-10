$(function(){
  $('.js-next').click(function(event){
    event.preventDefault();
    var nextId = parseInt($('.js-next').attr('data-id')) + 1
    $.get('/products/' + nextId + '/data', function(product){
      $('.product-name').text(product['name']);
      $('.product-price').text(product['price']);
      $('.product-inventory').text(product['inventory']);
      $('.product-description').text(product['description']);
      $('.js-next').attr('data-id', nextId);
    });
  });
});
