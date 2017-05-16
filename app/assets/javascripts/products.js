$(document).ready(function() {
  $('#js-next-product').on('click', function(e) {
    e.preventDefault();
    var productId = parseInt($(this).data('id'), 10) + 1;
    $.get('/products/' + productId.toString() + '/data', function(product) {
      $('#product_name').html(product.name);
      $('#product_inventory').html(product.inventory);
      $('#product_price').html(product.price);
      $('#product_description').html(product.description);
    });
  });
});
