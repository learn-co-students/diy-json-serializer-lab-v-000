class ProductSerializer
  def self.serialize(product)
    serialized_post = '{'
    serialized_post += '"id": ' + product.id.to_s + ', '
    serialized_post += '"name": "' + product.name + '", '
    serialized_post += '"price": ' + product.price.to_s + ', '
    serialized_post += '"inventory": ' + product.inventory.to_s + ', '
    serialized_post += '"description": "' + product.description + '"'
    serialized_post += '}'

  end
end
# # start with the open brace to create a valid JSON object
#     serialized_post = '{'
#
#     serialized_post += '"id": ' + post.id.to_s + ', '
#     serialized_post += '"title": "' + post.title + '", '
#     serialized_post += '"description": "' + post.description + '", '
#
#     # the author association can also be represented in JSON
#     serialized_post += '"author": {'
#     serialized_post += '"name": "' + post.author.name + '"}'
#
#     # and end with the close brace
#     serialized_post += '}'
