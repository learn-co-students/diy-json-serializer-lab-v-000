class ProductSerializer
  def self.serialize(product)

    serialized_product = '{'

    serialized_product += '"id": ' + product.id.to_s + ', '
    serialized_product += '"name": "' + product.name + '", '
    serialized_product += '"price": ' + product.price.to_s + ' ,'
    serialized_product += '"inventory": ' + product.inventory.to_s + ' ,'
    serialized_product += '"description": "' + product.description + '"'

    serialized_product += '}'
# Take care with your quotations. We need to single-quote our strings because JSON requires double-quoted keys and string values.
  end
end
