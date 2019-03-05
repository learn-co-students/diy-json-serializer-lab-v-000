class ProductSerializer
  def self.serialize(product)
    pro = '{'
    pro += '"id": ' + product.id.to_s + ', '
    pro += '"name": "' + product.name + '", '
    pro += '"price": ' + product.price.to_s + ', '
    pro += '"inventory": ' + product.inventory.to_s + ', '
    pro += '"description": "' + product.description + '"'
    pro += '}'
  end
end
