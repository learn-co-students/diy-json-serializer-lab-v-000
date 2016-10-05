$(document).ready(function () {
  $(".js-next").on("click", function() {

    var nextId = parseInt($(".js-next").attr("data-id")) + 1;

    $.get("/products/" + nextId + "/data", function(data) {
      $(".productName").text(data["name"]);
      $(".productPrice").text(data["price"]);
      $(".productDescription").text(data["description"]);
      $(".productInventory").text(data["inventory"]);

      $(".js-next").attr("data-id", data["id"]);
    });
  });
});
