class ProductSerializer
  def self.serialize(product)
    product_serializer = '{'
    product_serializer += '"id": ' + product.id.to_s + ', '
    product_serializer += '"name": "' + product.name + '", '
    product_serializer += '"price": ' + product.price.to_s + ', '
    product_serializer += '"inventory": ' + product.inventory.to_s + ', '
    product_serializer += '"description": "' + product.description + '"'
    product_serializer += '}'
  end
end
