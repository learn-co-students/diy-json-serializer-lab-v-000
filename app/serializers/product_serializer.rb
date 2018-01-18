class ProductSerializer
  def self.serialize(product)
    serialized_product = '{'

    serialized_product += '"id": ' + product.id.to_s + ', '
    serialized_product += '"name": "' + product.name + '", ' #check string
    serialized_product += '"price": ' + product.price.to_s + ', '
    serialized_product += '"inventory": ' + product.inventory.to_s + ', '
    serialized_product += '"description": "' + product.description + '"'

    serialized_product += '}'
  end

end
