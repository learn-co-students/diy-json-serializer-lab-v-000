$(function () {
    $('#js-next').click(function (e) {
        let id = parseInt($(this).data("id"));
        $.getJSON(`/products/${id + 1}/data`, function (data) {
            $('#name').text(data.name);
            $('#description').text(data.description);
            $('#inventory').text(data.inventory);
            $('#price').text(data.price);
        });
    });
});