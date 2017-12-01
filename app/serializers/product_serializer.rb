class ProductSerializer
  # name, price, inventory and description
  def self.serialize(product)
    serialized_product = '{'
    # serialize_product += '"id": ' + product.id.to_s + ','    
    serialized_product += '"name": "' + product.name + '", '
    serialized_product += '"price": ' + product.price.to_s + ', '
    serialized_product += '"description": "' + product.description + '", '
    serialized_product += '"inventory": ' + product.inventory.to_s + ''
    serialized_product += '}'
  end
end