class ProductSerializer

  def self.serialize(product)
    json = '{';
    json += '"name":"' + product.name.to_s + '",'
    json += '"price":' + product.price.to_s + ','
    json += '"inventory":' + product.inventory.to_s + ','
    json += '"description":"' + product.description.to_s + '"}'
  end

end
