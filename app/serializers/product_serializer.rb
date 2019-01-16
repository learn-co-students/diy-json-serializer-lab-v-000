class ProductSerializer
  def self.serialize(product)
  text = '{'
  text += '"name": "' + product.name + '", '
  text += '"price": ' + product.price.to_s + ', '
  text += '"inventory": ' + product.inventory.to_s + ', '
  text += '"description": "' + product.description + '"}'
  end
end