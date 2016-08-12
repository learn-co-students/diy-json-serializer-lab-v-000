class ProductSerializer
  def self.serialize(product)
    # name, price, inventory and description
    # start with the open brace to create a valid JSON object
    serialized_post = '{'
    serialized_post += '"id": ' + product.id.to_s + ', '
    serialized_post += '"name": "' + product.name + '", '
    serialized_post += '"description": "' + product.description + '", '
    serialized_post += '"inventory": ' + product.inventory.to_s
    serialized_post += '}'
  end
end