class ProductSerializer

  def self.serialize(product)
    product.as_json
  end
end
