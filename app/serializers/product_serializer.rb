class ProductSerializer
  def self.serialize(product)
    inventory = product.inventory.to_s if product.inventory
    price = product.price.to_s if product.price

    serialized_product = '{'
    serialized_product += '"id": ' + product.id.to_s + ', '
    serialized_product += '"name": "' + product.name + '", '
    serialized_product += '"description": "' + product.description + '", '
    serialized_product += '"inventory": ' + inventory + ', '
    serialized_product += '"price": ' + price
    serialized_product += '}'
  end
end
