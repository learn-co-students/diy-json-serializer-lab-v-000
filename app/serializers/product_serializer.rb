class ProductSerializer
  def self.serialize(product)
    serialized_product = '{'

    serialized_product += '"id": ' + product.id.to_s + ', '
    serialized_product += '"name": ' + ( product.name.nil? ? '" "' : '"' + product.name + '"') + ', '
    serialized_product += '"price": ' +  (product.price.nil? ? '" "' : product.price.to_s) + ', '
    serialized_product += '"inventory": ' + (product.inventory.nil? ? '" "' : product.inventory.to_s) + ', '
    serialized_product += '"description": ' + (product.description.nil? ? '" "' : '"' + product.description + '"' ) + ' '

    serialized_product += '}'
  end
end
