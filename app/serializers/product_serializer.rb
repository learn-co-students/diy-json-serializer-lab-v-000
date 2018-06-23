class ProductSerializer
  def self.serialize(product)
    output = "{"
    output += '"id": ' + product.id.to_s + ','
    output += '"name": "' + product.name + '",'
    output += '"price": ' + product.price.to_s + ','
    output += '"inventory": ' + product.inventory.to_s + ','
    output += '"description": "' + product.description + '"'
    output += "}"
  end
end
