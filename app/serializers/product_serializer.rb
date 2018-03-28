class ProductSerializer 

    def self.serialize(product)
        serialized_product = '{'
        serialized_product += '"Id": '+ product.id.to_s + ', '
        serialized_product += '"name": "' + product.name + '", '
        serialized_product += '"description": "' + product.description + '", '
        serialized_product += '"inventory": ' + product.inventory.to_s + ' '
        serialized_product += '}'
    end 
end 