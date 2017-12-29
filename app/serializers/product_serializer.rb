class ProductSerializer
  def self.serialize(product)
     serialized_product = '{'
     serialized_product += '"id": ' + product.id.to_s + ', '
     serialized_product += '"name": "' + product.name + '", '
     serialized_product += '"price": ' + product.price.to_s + ', '
     product.inventory = 0 if product.inventory.nil?
     serialized_product += '"inventory": ' + product.inventory.to_s + ', '
     product.description = "" if product.description.nil?
     serialized_product += '"description": "' + product.description + '" '
     serialized_product += '}'
  end
end
