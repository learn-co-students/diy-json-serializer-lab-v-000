class ProductSerializer

  def self.serialize(product)
    serialized = '{ '
    serialized += '"name": "' + product.name + '" , '
    serialized += '"description": "' + product.description + '" , '
    serialized += '"price": ' + product.price.to_s + ' , '
    serialized += '"inventory": ' + product.inventory.to_s
    serialized += '}'
  end

end

# (name, price, inventory and description) to JSON.