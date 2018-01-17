class ProductSerializer
  def self.serialize(product)

    # start with the open brace to create a valid JSON object
    serialized_p = '{'

    serialized_p += '"id": ' + product.id.to_s + ', '
    serialized_p += '"name": "' + product.name + '", '
    serialized_p += '"description": "' + product.description + '", '
    serialized_p += '"price": "' + product.price.to_s + '", '
    serialized_p += '"inventory": ' + product.inventory.to_s

    serialized_p += '}'
  end
end
