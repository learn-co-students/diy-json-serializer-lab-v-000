$(function() {
  $(".js-next").on("click", function(e) {
    e.preventDefault();

    var nextId = parseInt($(".js-next").attr("data-id")) + 1;
    $.getJSON("/products/" + nextId + "/data", function(data) {
      $('.product_name').text(data["name"]);
      $('.product_price').text(data["price"]);
      $('.product_description').text(data["description"]);
      $(".js-next").attr("data-id", data["id"]);
    });
  });
});
