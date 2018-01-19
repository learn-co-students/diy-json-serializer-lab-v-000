class ProductSerializer
  def self.serialize(product)
    serialized_prod = '{'

    serialized_prod += '"id": ' + product.id.to_s + ', '
    serialized_prod += '"name": "' + product.name + '", '
    serialized_prod += '"price": ' + product.price.to_s + ', '
    serialized_prod += '"inventory": ' + product.inventory.to_s + ', '
    serialized_prod += '"description": "' + product.description + '"'

    serialized_prod += '}'
  end
end