class ProductSerializer 
    def self.to_json(product)
        # raise product.inspect
        '{"firstName": "John"}'
    end
end
