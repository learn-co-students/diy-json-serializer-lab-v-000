class ProductSerializer
  def self.serialize(product)
    # open JSON object
    serialized_product = '{'

    serialized_product += '"id": ' + product.id.to_s + ', '
    serialized_product += '"name": "' + product.name + '", '
    serialized_product += '"description": "' + product.description + '", '
    serialized_product += '"inventory": ' + product.inventory.to_s + ', '
    serialized_product += '"price": "' + product.price.to_s + '"'

    # close JSON object
    serialized_product += '}'
  end
end
