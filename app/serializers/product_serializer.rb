class ProductSerializer

  def self.serialize(product)
    serialized_product = '{'
    serialized_product += '"id": ' + product.id.to_s + ', '
    serialized_product += '"name": "' + product.name + '", '
    serialized_product += '"price": ' + product.price.to_s + ', '
    serialized_product += '"inventory": ' + product.inventory.to_s + ', '
    serialized_product += '"description": "' + product.description + '"'
    serialized_product += '}'
  end
  
end


# Passing serializer test. 
#You are up to step 3 in instructions, create the show page and route...