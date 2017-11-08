class ProductSerializer

  def self.serialize(product)

    product_name = product.name || ''
    product_price = product.price.to_s || ''
    product_inventory = product.inventory || 0
    product_description = product.description || ''

    serialized_product = '{'

    serialized_product += '"id": ' + product.id.to_s + ','

    serialized_product += '"name": "' + product_name + '",'

    serialized_product += '"price": "' + product_price + '",'

    serialized_product += '"inventory": ' + product_inventory.to_s + ','

    serialized_product += '"description": "' + product_description + '"'

    serialized_product += '}'
  end

end
