$(function() {
  $("#nextProduct").click(function() {
    const id = $("#productInfo").data("id")+1;
    $.getJSON("/products/"+id+"/data", function(data) {
      updateProduct(data);
    });
  });
  $("#prevProduct").click(function() {
    const id = $("#productInfo").data("id")-1;
    $.getJSON("/products/"+id+"/data", function(data){
      updateProduct(data);
    });
  });
});

function updateProduct(product) {
  debugger;
  $("#productName").text(product.name);
  $("#productPrice").text(numberToCurrency(product.price));
  $("#productAvailability").text(availability(product.inventory));
  $("#productDescription").text(product.description);
  $("#productInfo").data("id", product.id);
}

function numberToCurrency(number) {
  currency = "$"+number+".00"
}

function availability(inventory) {
  return inventory > 0 ? "Available": "Sold Out"
}
