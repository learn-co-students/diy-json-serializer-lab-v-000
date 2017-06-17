class ProductSerializer
  def self.serialize(product)
      #open/begin json object
      serialized_product = '{'
      #product attributes
      serialized_product += '"id": ' + product.id.to_s + ','
      serialized_product += '"name": "' + product.name + '",'
      serialized_product += '"price": ' + product.price.to_s + ','
      serialized_product += '"inventory": ' + product.inventory.to_s + ','
      serialized_product += '"description": "' + product.description + '"'
      #close json object
      serialized_product += '}'
  end
end
