$(function () {
  $(".show_link").on("click", function (e) {
    e.preventDefault()
    // you need to increment the data-id by one each time
    var id = parseInt($(".show_link").attr("data-id")) + 1
    $.getJSON("/products/" + id + "/data", function(data) {
      $(".name").text(data["name"])
      $(".description").text(data["description"])
      $(".inventory").text(data["inventory"])
      $(".price").text(data["price"])
      // you need to save the new id in the data-id attribute in the link
      $(".show_link").attr("data-id", data["id"])
    })
  })
})
