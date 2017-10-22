class ProductSerializer
  def self.serialize(product)
    # start with the open brace to create a valid JSON object
    serialized_product = '{'

    serialized_product += '"id": ' + product.id.to_s + ', '
    serialized_product += '"name": "' + product.name + '", '
    serialized_product += '"price": ' + product.price.to_s + ', '
    serialized_product += '"description": "' + product.description + '", '
    serialized_product += '"inventory": ' + product.inventory.to_s + ' '

    # # the author association can also be represented in JSON
    # serialized_post += '"author": {'
    # serialized_post += '"name": "' + post.author.name + '"}'

    # and end with the close brace
    serialized_product += '}'
  end


end
