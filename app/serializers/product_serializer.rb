class ProductSerializer
  def self.serialize(product)
    serialize_product = '{'
    serialize_product += '"id": ' + product.id.to_s + ','
    serialize_product += '"name": "' + product.name + '",'
    serialize_product += '"price": ' + product.price.to_s + ','
    serialize_product += '"inventory": ' + product.inventory.to_s + ','
    serialize_product += '"description": "' + product.description + '"'
    

    serialize_product += '}'
  end

end