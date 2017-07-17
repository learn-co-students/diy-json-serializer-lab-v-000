$(function(){
  $("#js-next").on("click", function(){
    event.preventDefault()
    var id = parseInt($(this).attr("data-id"))+1
    var path = "/products/" + id + "/data"
    $.get(path, function(data){
      $('.name').text(data["name"]);
      $('.description').text(data["description"]);
      $('.inventory').text("Inventory: "+data["inventory"]);
      $('.price').text(data["Price: "+"price"]);
    })
  })
})
