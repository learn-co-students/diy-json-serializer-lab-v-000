class ProductSerializer
  def self.serialize(product)
    serialized_data = '{'
    serialized_data += '"id": ' + product.id.to_s + ', '
    serialized_data += '"name": "' + product.name + '", '
    serialized_data += '"price": ' + product.price.to_s + ', '
    serialized_data += '"inventory": ' + product.inventory.to_s + ', '
    serialized_data += '"description": "' + product.description + '"'
    serialized_data += '}'
    serialized_data
  end
end
