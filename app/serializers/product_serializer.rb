class ProductSerializer

  def self.serialize(product)
    serialized = '{'
    serialized += '"id": ' + product.id.to_s + ','
    serialized += '"name": "' + product.name + '",'
    serialized += '"price": ' + product.price.to_s + ','
    serialized += '"description": "' + product.description + '",'
    serialized += '"inventory": ' + product.inventory.to_s
    serialized += '}'

    serialized
  end

end
