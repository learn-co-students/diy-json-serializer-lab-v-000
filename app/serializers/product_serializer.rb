class ProductSerializer
  def self.serialize(product)
    if product.inventory.nil?
      product_inventory = 0
    else
      product_inventory = product.inventory
    end
    if product.description.nil?
      product_desription = ""
    else
      product_description = product.description
    end

    #start with the open brace to create a valid JSON object
    serialized_product = '{'

    serialized_product += '"id": ' + product.id.to_s + ', '
    serialized_product += '"name": "' + product.name + '", '
    serialized_product += '"inventory": ' + product_inventory.to_s + ', '
    serialized_product += '"price": ' + product.price.to_s + ', '
    serialized_product += '"description": "' + product_description + '" '

    # and end with the close brace
    serialized_product += '}'
  end
end
