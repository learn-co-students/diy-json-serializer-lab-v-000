class ProductSerializer

  def serialize(product)
    serial = "{"
    serial += '"id": ' + product.id.to_s + ', '
    serial += '"name": "' + product.name + '", '
    serial += '"price": ' + product.price.to_s + ', '
    serial += '"inventory": ' + product.inventory.to_s + ', '
    serial += '"description": "' + product.description + '"}'
    serial
  end


end