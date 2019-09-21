class ProductSerializer
  def self.serialize(product)

    # start with the open brace to create a valid JSON object
    serialized_post = '{'
    serialized_post += '"id": ' + product.id.to_s + ', '
    serialized_post += '"price": "' + prouct.title + '", '
    serialized_post += '"inventory": ' + product.inventory.to_s + ', '
    serialized_post += '"description": "' + product.description + '", '
    serialized_post += "}"
  end
end
