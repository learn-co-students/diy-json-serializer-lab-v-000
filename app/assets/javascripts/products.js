$(function () {
  $("#next-product").on("click", function () {
    const nextId = parseInt(this.dataset.id, 10) + 1;

    $.get("/products/" + nextId + "/data", function(data) {
      $("#product-name").text(data["name"]);
      $("#product-id").text(data["id"]);
      $("#product-inventory").text(data["inventory"]);
      $("#product-price").text(data["price"]);
      $("#product-description").text(data["description"]);
      $("#next-product").attr("data-id", data["id"]);
    });
  });
});
