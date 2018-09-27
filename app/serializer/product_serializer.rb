class ProductSerializer


    def self.serialize(product)
        sp = '{'

        sp += '"id": ' + product.id.to_s + ', '
        sp += '"name": "' + product.name + '", '
        sp += '"description": "' + product.description + '", '
        sp += '"inventory": ' + product.inventory.to_s + ', '
        sp += '"price": "' + product.price.to_s + '"'

        sp += '}'
    end



end 