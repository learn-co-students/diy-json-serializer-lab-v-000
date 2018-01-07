class ProductSerializer

  def self.serialize(product)
    # s_product = '{'
    #   s_product  +=  '"id": ' + product.id.to_s + ','
    #     s_product  += '"name" :"' + product.name + '",'
    #       s_product  += '"price": "' + product.price.to_s + '",'
    #         s_product += '"inventory": "'+ product.inventory + '",'
    #           s_product += '"description": "' +   product.description + '"'
    #             s_product += '}'

      serialized_product = '{'

         serialized_product += '"id": ' + product.id.to_s + ', '
         serialized_product += '"name": "' + product.name + '", '
         serialized_product += '"description": "' + product.description + '", '
         serialized_product += '"price": "' + product.price.to_s + '", '
         serialized_product += '"inventory": ' + product.inventory.to_s + ' '

         serialized_product += '}'

  end
end
