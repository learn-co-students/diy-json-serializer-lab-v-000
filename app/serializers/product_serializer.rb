class ProductSerializer
  def self.serialize(product)
    serialized = '{"name": "' + product.name + '", '
    serialized += '"id": ' + product.id.to_s + ', '
    serialized += '"price": ' + product.price.to_s + ', '
    serialized += '"inventory": ' + product.inventory.to_s + ', '
    serialized += '"description": "' + product.description + '"}'
  end
end
