class ProductSerializer

  def self.serialize(product)
    {
      name: product.name,
      price: product.price,
      inventory: product.inventory,
      description: product.description
    }.to_json
  end

end
