class ProductSerializer

  def self.serialize(product)
    serialized_pod = '{'

    serialized_pod += '"name": "' + product.name + '", '
    serialized_pod += '"price": ' + product.price.to_s + ', '
    serialized_pod += '"inventory": ' + product.inventory.to_s + ', '
    serialized_pod += '"description": "' + product.description + '" '

    serialized_pod += '}'
  end

end
