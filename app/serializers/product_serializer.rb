class ProductSerializer

  def self.serialize(product)
    #start with open brace
    serialized_product = '{'
    serialized_product += '"name": "' + product.name + '", '
    serialized_product += '"price":' + product.price.to_s + ', '
    serialized_product += '"inventory":' + product.inventory.to_s + ', '
    serialized_product += '"description": "' + product.description + '"'
    #end with closed brace
    serialized_product += '}'
  end
end
