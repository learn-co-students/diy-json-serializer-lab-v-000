
# NOTE : Top-tip: Take care with your quotations. We need to single-quote our strings because JSON requires double-quoted keys and string values.

class ProductSerializer
    
  def self.serialize(product)

    # puts "product = #{product}"
 
    # start with the open brace to create a valid JSON object
    serialized_product = '{'
 
    # Serialize all attributes of product
    serialized_product += '"id": ' + product.id.to_s + ', '
    serialized_product += '"name": "' + product.name + '", '
    serialized_product += '"price": ' + product.price.to_s + ', '
    serialized_product += '"description": "' + product.description + '", '
    serialized_product += '"inventory": ' + product.inventory.to_s + ''
 
    # and end with the close brace
    serialized_product += '}'
    # puts "serialized product = #{serialized_product}"
  end
  
end
