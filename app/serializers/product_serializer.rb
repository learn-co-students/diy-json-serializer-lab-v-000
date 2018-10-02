class ProductSerializer
  def self.serialize(product)
    ser = "{"
    ser += '"id": ' + product.id.to_s + ','
    ser += '"name": "' + product.name + '",'
    ser += '"price": ' + product.price.to_s + ','
    if product.inventory != nil
      ser += '"inventory": ' + product.inventory.to_s + ','
    end
    if product.inventory != nil
      ser += '"description": "' + product.description + '"}'
    end
  end
end
