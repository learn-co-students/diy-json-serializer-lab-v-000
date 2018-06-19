class ProductSerializer
  def self.serialize(product)
    productJSON = '{'

    productJSON += '"name": "' + product.name + '",'
    productJSON += '"price": ' + product.price.to_s + ','
    productJSON += '"inventory": ' + product.inventory.to_s + ','
    productJSON += '"description": "' + product.description + '" ,'
    productJSON += '"id": ' + product.id.to_s + '}'
  end
end
