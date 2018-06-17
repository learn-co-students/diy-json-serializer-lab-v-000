class ProductSerializer
    def self.serialize(product_obj)
        json = "{"
        json += '"name": ' + '"' + product_obj.name + '"' + ", "
        json += '"price": ' + product_obj.price.to_s+ ", "
        json += '"inventory": ' + product_obj.inventory.to_s + ", "
        json += '"description": ' + '"' + product_obj.description + '"'
        json += "}"
    end
end