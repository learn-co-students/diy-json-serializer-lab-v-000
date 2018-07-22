class ProductSerializer

  def self.serialize(product)
    serialized_product = '{'
    serialized_product += '"id": '+ product.id.to_s + ' , '
    serialized_product += '"name":"'+ product.name + '", '
    serialized_product += '"price":'+ product.price.to_s + ','
    serialized_product += '"inventory":'+ product.inventory.to_s + ' , '
    serialized_product += '"description":"' + product.description + '"'
    serialized_product += '}'
  end





end


# {
# id: 1,
# name: "My Product",
# price: 3,
# inventory: 2,
# description: "lorem oh this is cool lorem lorem yadda yadda yadda lorem"
# }
