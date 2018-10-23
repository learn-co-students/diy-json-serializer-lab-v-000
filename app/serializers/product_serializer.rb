class ProductSerializer

    def self.serialize(product)
        serialized_product = '{"id": ' + product.id.to_s + ', "name": "' + product.name + '", "price": ' + product.price.to_s + ', "inventory": ' + product.inventory.to_s + ', "description": "' + product.description + '"}'
    end

end