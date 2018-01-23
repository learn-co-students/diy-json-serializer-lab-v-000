class ProductSerializer
  def self.serialize(product)
    serial_prod = '{'

    serial_prod += '"id": ' + product.id.to_s + ', '
    serial_prod += '"name": "' + product.name + '", '
    serial_prod += '"price": ' + product.price.to_s + ', '

    serial_prod += '"inventory": ' + product.inventory.to_s + ', '
    serial_prod += '"description": "' + product.description + '"'
    serial_prod += '}'
  end
end
