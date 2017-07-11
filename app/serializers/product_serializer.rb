class ProductSerializer
  def self.serialize(product)
    # start with the open brace to create a valid JSON object
    serialized_post = '{'
    serialized_post += '"id": ' + product.id.to_s + ', '
    serialized_post += '"name": "' + product.name + '", '
    serialized_post += '"inventory": ' + product.inventory.to_s + ', '
    serialized_post += '"description": "' + product.description + '", '

    # the author association can also be represented in JSON
    serialized_post += '"next_id": "' + (product.id + 1).to_s + '" '

    # and end with the close brace
    serialized_post += '}'
  end
end
