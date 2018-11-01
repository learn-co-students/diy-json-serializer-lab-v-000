class ProductSerializer
  def self.serialize(product)
    desc = product["description"] || ""
    serialized_product = '{'
    serialized_product += '"id": ' + product["id"].to_s + ', '
    serialized_product += '"name": "' + product["name"] + '", '
    serialized_product += '"description": "' + desc + '", '
    serialized_product += '"inventory": ' + product["inventory"].to_s + ', '
    serialized_product += '"price": "' + product["price"].to_s + '"'

    serialized_product += '}'
  end
end
