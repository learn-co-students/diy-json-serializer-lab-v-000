class ProductSerializer
#serialize product attributes: name, price, inventory, description

  def self.serialize(product)
    #rememer that string attributes require quotes around the data input
    serialized_post = '{'
    serialized_post += '"id": ' + product.id.to_s + ', '
    serialized_post += '"name": "' + product.name + '", '
    serialized_post += '"price": ' + product.price.to_s + ', '
    serialized_post += '"inventory": ' + product.inventory.to_s + ', '
    serialized_post += '"description": "' + product.description + '"'
    serialized_post += '}'
  end

  # def self.serialize
  #   endstr = '{'
  #   endstr += '"name": "' + product.name + '", '
  #   endstr += '"description": "' + product.description + '", '
  #   endstr += '"inventory": ' + product.inventory.to_s + ', '
  #   endstr += '"price": ' + product.price.to_s
  #   endstr += '}'
  # end

end