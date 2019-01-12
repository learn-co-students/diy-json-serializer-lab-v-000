$(function () {
  $(".js-next").on("click", function(e) {
    e.preventDefault();
    var nextId = parseInt($(".js-next").attr("data-id")) + 1;
    $.get("/products/" + nextId + "/data", function(data) {
      $(".productName").text(data["name"]);
      $(".productDescription").text(data["description"]);
      $(".js-next").attr("data-id", data["id"]);
    });
  });
});
