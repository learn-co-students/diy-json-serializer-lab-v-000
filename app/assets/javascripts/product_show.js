$(function(){
  $('.js-next').on("click", function(event){
    var nextId = parseInt($(this).attr('data-id'))+1;
    $.get('/products/' + nextId + '/data', function(data){
      $('.productName').html(data["name"]);
      $('.productDescription').html(data['description']);
      $('.productPrice').html(data['price']);
      $('.js-next').attr('data-id',data['id']);
    });
    event.preventDefault();
  });
});
