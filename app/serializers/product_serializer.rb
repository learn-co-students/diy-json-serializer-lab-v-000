class ProductSerializer

  def self.serialize(product)
    serialized =  '{'
    serialized += '"name": "'+product.name+'", '
    serialized += '"price": '+product.price.to_s+', '
    serialized += '"inventory": '+product.inventory.to_s+', '
    serialized += '"description": "'+product.description+'" '
    serialized += '}'
  end
end