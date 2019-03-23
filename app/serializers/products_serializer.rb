class ProductsSerializer
  def self.serialize(product)
    serialized_product = '{'
    # binding.pry
    serialized_product += '"id": ' + product.id.to_s + ', '
    serialized_product += '"name": "' + product.name + '", '
    serialized_product += '"price": "' + product.price.to_s + '", '
    serialized_product += '"inventory": ' + product.inventory.to_s + ', '
    serialized_product += '"description": "' + product.description.to_s + '"'

    # and end with the close brace
    serialized_product += '}'
  end
end