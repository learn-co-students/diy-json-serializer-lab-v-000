class ProductSerializer
  def self.serialize(product)
    #begin with an open brace
    serialized_product = '{'
    #Add the product attributes
    serialized_product += '"id": ' + product.id.to_s + ', '
    serialized_product += '"name": "' + product.name + '", '
    serialized_product += '"price": ' + product.price.to_s + ', '
    serialized_product += '"inventory": ' + product.inventory.to_s + ', '
    serialized_product += '"description": "' + product.description + '"'
    #Finish with closing brace
    serialized_product += '}'
  end
end