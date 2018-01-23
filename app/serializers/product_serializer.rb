# class ProductSerializer
#   def self.serialize(product)
#     serialized = "{" +"'id': " + product.id.to_s + ", " +
#     "'name': " + product.name + ", " +
#     "'description': " + product.description + ", " +
#     "'inventory': " + product.inventory.to_s + ", " +
#     "'price': " + product.price.to_s +
#     "}"
#     serialized
#   end
# end
class ProductSerializer
  def self.serialize(product)
    serialized = '{'

    serialized += '"id": ' + product.id.to_s + ', '
    serialized += '"name": "' + product.name + '", '
    serialized += '"description": "' + product.description + '", '
    serialized += '"inventory": ' + product.inventory.to_s + ', '
    serialized += '"price": "' + product.price.to_s + '"'

    serialized += '}'
  end
end
