class ProductSerializer
  def self.serialize(product)
    serialized_product = '{'

    serialized_product += '"id": ' + product.id.to_s
    serialized_product += ', "name": "' + product.name + '"' if product.name
    serialized_product += ', "price": ' + product.price.to_s if product.price
    serialized_product += ', "inventory": ' + product.inventory.to_s if product.inventory
    serialized_product += ', "description": "' + product.description + '"' if product.description

    serialized_product += '}'
  end
end
