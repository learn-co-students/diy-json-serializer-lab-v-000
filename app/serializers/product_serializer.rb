class ProductSerializer
  def self.serialize(product)
    # open brace
    s_prod = '{'
    # product data
    s_prod += '"id": ' + product.id.to_s + ', '
    s_prod += '"name": "' + product.name + '", '
    s_prod += '"price": ' + product.price.to_s + ', '
    s_prod += '"inventory": ' + product.inventory.to_s + ', '
    s_prod += '"description": "' + product.description + '"'
    # closing brace
    s_prod += '}'
  end
end