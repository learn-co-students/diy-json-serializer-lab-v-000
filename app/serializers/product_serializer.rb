class ProductSerializer
  require 'json'
    def self.serialize(product)
        
        product_hash = {id: product.id.to_s, name: product.name, price: product.price.to_s, inventory: product.inventory, description: product.description}
        JSON.generate(product_hash)
    end
  
end 
    
=begin 
  def self.serialize(product)
    serialized_product  = '{'
    serialized_product += '"id": ' + product.id.to_s + ', '
    serialized_product += '"name": "' + product.name + '", '
    serialized_product += '"price": "' + product.price.to_s + '", '
    serialized_product += '"inventory": ' + product.inventory.to_s + ', '
    serialized_product += '"description": "' + product.description + '"'
    serialized_product += '}'
  end
=end

