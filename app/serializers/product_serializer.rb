class ProductSerializer
  def self.serialize(product)
    serialized_product = '{'

     serialized_product += '"id": ' + product.id.to_s + ', '
    serialized_product += '"name": "' + product.name + '", '
    serialized_product += '"price": ' + product.price.to_s + ', '
    serialized_product += '"description": "' + (!!product.description ? product.description : '') + '", '
    serialized_product += '"inventory": ' + (!!product.inventory ? product.inventory.to_s : '0')


    serialized_product += '}'
  end
end