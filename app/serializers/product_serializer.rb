class ProductSerializer
  def self.serialize(product)
    # start with the opening curly brace to create a valid JSON object
    serialized_product = '{'

    serialized_product += '"id": ' + product.id.to_s + ', '
    serialized_product += '"name": "' + product.name + '", '
    serialized_product += '"price": ' + product.price.to_s + ', '
    serialized_product += '"inventory": ' + product.inventory.to_s + ', '
    serialized_product += '"description": "' + product.description + '"'

    # and end with the closing curly brace to create a valid JSON object
    serialized_product += '}'
  end
end
# returns a JSON representation of the product
# serialize the product instance, i.e.,
# return a JSON string of the JSON object representing the product instance
# It preserves the current state of the product instance's attribute values
# Reminder: We must single-quote strings because JSON requires double-quoted keys and string values.
