class ProductSerializer

  def self.serialize(product)
    # serialized_product = '{ "name":' + "#{product.name}," + '"price":' + "#{product.price.to_s}," + '"inventory":' + "#{product.inventory}," + '"description":' + "#{product.description}" + '}'
    serialized_product = {id: product.id, name: product.name, price: product.price.to_s, inventory: product.inventory, description: product.description }
    serialized_product.to_json

    # serialized_product = '{'
    #
    # serialized_product += '"id": ' + product.id.to_s + ', '
    # serialized_product += '"name": "' + product.name + '", '
    # serialized_product += '"description": "' + product.description + '", ' unless product.description.nil?
    # serialized_product += '"inventory": "' + product.inventory + '", ' unless product.inventory.nil?
    # serialized_product += '"price": "' + product.price.to_s + '"'
    # # and end with the close brace
    # serialized_product += '}'

  end

end
