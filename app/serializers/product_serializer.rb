class ProductSerializer
  def self.serialize(product)
    product_serialize = '{'

    product_serialize += '"name": "' + product.name + '", '
    product_serialize += '"id": ' + product.id.to_s + ', '
    product_serialize += '"inventory": ' + product.inventory.to_s + ', '
    product_serialize += '"description": "' + product.description + '", '
    product_serialize += '"price": ' + product.price.to_s + ''

    product_serialize += '}'
  end
end
