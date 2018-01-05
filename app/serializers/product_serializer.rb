class ProductSerializer
  def self.serialize(product)
    serailized_product = '{'
    serailized_product += '"id": ' + product.id.to_s + ', '
    serailized_product += '"name": "' + product.name + '", '
    serailized_product += '"description": "' + product.description + '", '
    serailized_product += '"price": "' + product.price.to_s + '", '
    serailized_product += '"inventory": "' + product.inventory.to_s + '"'

    # and end with the close brace
    serailized_product += '}'
  end
end
