class ProductSerializer
    def self.serialize(product)
        serialized_product = '{'
        serialized_product += '"id": ' + product.id.to_s + ', ' if !product.id.nil?
        serialized_product += '"name": "' + product.name + '", ' if !product.name.nil?
        serialized_product += '"price": ' + product.price.to_s + ', ' if !product.price.nil?
        serialized_product += '"inventory": ' + product.inventory.to_s + ', ' if !product.inventory.nil?
        serialized_product += '"description": "' + product.description + '"' if !product.description.nil?
        serialized_product += '}'
    end

end