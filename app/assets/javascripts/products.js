$(function() {
  $('.js-next').on('click', function() {
    var nextId = parseInt($('.js-next').attr('data-id')) + 1;
    debugger;
    $.getJSON('/products/' + nextId + '/data', function(data) {
      $('.productName').text(data["name"]);
      $('.productDescription').text(data["description"]);
      $('.productInventory').text(available(parseInt(data["inventory"])));
      $('.productPrice').text("$" + data["price"]);
      $('.js-next').attr('data-id', data["id"]);
    });
  });
});

function available(inventory) {
  if (inventory > 0) {
    return "Available"
  } else {
    return "Sold Out"
  }
}
