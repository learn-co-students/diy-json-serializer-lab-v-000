function Product(id){
    this.id = id;
    this.getData = function(callback){
        var reqURL = "/products/" + this.id;
        $.ajax({
            url: reqURL,
            headers: {
                "Accept": "application/json"
            }
        })   
        .success(function(res){
            callback(res)
        }) 
    };

    this.setNameHeader = function(name){
        $('.prod-name').html(name);
    };
    this.setInv = function(inv){
        $('.prod-inv').html("Inventory: " + inv);
    };
    this.setPrice = function(price){
        $('.prod-price').html(price);
    };
    this.setDescription = function(desc){
        $('.prod-desc').html(desc);
    }
    this.updateId = function(){
        $('.js-next').attr('data-id', this.id)
    }

}

$(function(){
    $(document).on('click', '.js-next', function(e){
        e.preventDefault();
        var id = parseInt(this.dataset.id) + 1;
        var prod = new Product(id);
        prod.getData(function(json){
            prod.setDescription(json.description)
            prod.setInv(json.inventory)
            prod.setPrice(json.price)
            prod.updateId()
            prod.setNameHeader(json.name)
        })
    })
})