class ProductSerializer

  def self.serialize(product)
    product.description ||= ""
    product.inventory ||= 0

    serializeProduct = '{'
    serializeProduct += '"id": ' + product.id.to_s + ', '
    serializeProduct += '"name": "' + product.name + '", '
    serializeProduct += '"description": "' + product.description + '", '
    serializeProduct += '"inventory": ' + product.inventory.to_s
    serializeProduct += '}'
  end

end
