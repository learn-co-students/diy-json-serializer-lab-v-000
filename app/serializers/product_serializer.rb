class ProductSerializer
  def self.serialize(product)
    result = '{'
    result += '"id":' + product.id.to_s
    result += ',"price":' + product.price.to_s
    result += ',"name": "' + product.name + '"' if product.name
    result += ',"description": "' + product.description + '"' if product.description
    result += ',"inventory":' + product.inventory.to_s if product.inventory
    result += '}'
  end
end
