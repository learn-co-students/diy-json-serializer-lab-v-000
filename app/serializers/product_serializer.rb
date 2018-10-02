class ProductSerializer
  def self.serialize(post)
    serialized_post = '{'

    serialized_post += '"id": ' + post.id.to_s + ', '
    serialized_post += '"name": "' + post.name + '", '
    serialized_post += '"price": ' + post.price.to_s + ', '
    serialized_post += '"inventory": ' + post.inventory.to_s + ', '
    serialized_post += '"description": "' + post.description + '"'

    serialized_post += '}'
  end
end
