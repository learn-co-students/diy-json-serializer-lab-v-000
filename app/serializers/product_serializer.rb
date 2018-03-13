class ProductSerializer
  def self.serialize(product)
    product_data = '{'
    product_data += '"id": ' + product.id.to_s + ', '
    product_data += '"name": "' + product.name + '", '
    product_data += '"price": ' + product.price.to_s + ', '
    product_data += '"inventory": ' + product.inventory.to_s + ', '
    product_data += '"description": "' + product.description + '"'
    product_data += '}'
  end
end
