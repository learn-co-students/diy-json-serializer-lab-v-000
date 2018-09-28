class ProductSerializer

  def self.serialize(product)
    json_product = '{'
    json_product += '"id": ' + product.id.to_s + ', '
    json_product +=  '"name": "' + product.name + '", '
    if product.description != nil
      json_product +=  '"description": "' + product.description + '", '
    else
      json_product +=  '"description": "''", '
    end
    json_product +=  '"inventory": "' + product.inventory.to_s + '", '
    json_product +=  '"price": "' + product.price.to_s + '"'
    json_product += '}'
    json_product

  end
end
