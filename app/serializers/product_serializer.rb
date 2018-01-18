class ProductSerializer
  def self.serialize(product)
    serialized_product = '{'
    serialized_product += '"id": ' + product.id.to_s
    if product.name
      serialized_product += + ', "name": "' + product.name + '"'
    end
    if product.price
      serialized_product += + ', "price": ' + product.price.to_s
    end
    if product.inventory
      serialized_product += ', "inventory": ' + product.inventory.to_s
    end
    if product.description
      serialized_product += ', "description": "' + product.description + '" '
    end

    serialized_product += '}'
  end
end
