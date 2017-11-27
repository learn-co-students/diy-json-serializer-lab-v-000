#Create a ProductSerializer that serializes all of a product's attributes (name, price, inventory and description) to JSON.

class ProductSerializer

  def self.serialize(product)
    serialized_product = '{'

    serialized_product += '"name": "' + product.name + '", '
    serialized_product += '"price": ' + product.price.to_s + ', '
    serialized_product += '"inventory": ' + product.inventory.to_s + ', '
    serialized_product += '"description": "' + product.description + '" '
    serialized_product += '}'
  end

end

