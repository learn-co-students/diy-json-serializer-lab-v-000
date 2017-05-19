class ProductSerializer
    def self.serialize(product)
#        name, price, inventory and description
        product.to_json 
    end
end