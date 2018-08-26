class ProductSerializer

  def self.serialize(product)
    serial_product = '{'
    serial_product += '"name": "' + product.name + '", '
    serial_product += '"price": ' + product.price.to_s + ','
    serial_product += '"inventory": ' + product.inventory.to_s + ','
    serial_product += '"description": "' + product.description + '"'
    serial_product += '}'
  end
end
