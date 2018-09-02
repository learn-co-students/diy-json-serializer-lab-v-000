class ProductSerializer
  def self.serialize(prod)

    #price_converted = prod.price.to_s
    #inventory_converted = prod.inventory.to_s
    #binding.pry
    # start with the open brace to create a valid JSON object
    serialized_post = '{'

    #serialized_post += '"id": ' + post.id.to_s + ', '

    serialized_post += '"name": "' + prod.name + '", '
    serialized_post += '"price": ' + prod.price.to_s + ', '
    serialized_post += '"inventory": ' + prod.inventory.to_s + ', '
    serialized_post += '"description": "' + prod.description + '"'

    # and end with the close brace
    serialized_post += '}'
  end
end
