class ProductSerializer
  def self.serialize(product)
    serialized_product = '{' +
                         '"name": "' + product.name + '", ' +
                         '"price": ' + product.price.to_s + ', ' +
                         '"inventory":' + product.inventory.to_s + ', ' +
                         '"description": "' + product.description + '"' + '}'
  end
end 