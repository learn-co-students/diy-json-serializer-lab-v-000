class ProductSerializer
  def self.serialize(product)
    {
      "id": product.id,
      "name": product.name,
      "description": product.description,
      "inventory": product.inventory,
      "price": product.price.to_s
    }
  end
end