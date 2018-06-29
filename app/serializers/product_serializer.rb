class ProductSerializer
  def self.serialize(product)
   '{'+
   '"id": '+ product.id.to_s+', '+
   '"name": "'+ product.name+'", '+
   '"description": "'+ product.description+'", '+
   '"inventory": '+ product.inventory.to_s+', '+
   '"price": "'+ product.price.to_s+'"'+
   '}'
  end
end
