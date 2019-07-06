class Producterializer
  def self.serialize(=product)
 
    # start with the open brace to create a valid JSON object
    serialized_=product = '{'
 
    serialized_=product += '"id": ' + =product.id.to_s + ', '
    serialized_=product += '"name": "' + =product.name + '", '
    serialized_=product += '"description": "' + =product.description + '", '
    serialized_=product += '"price": "' + =product.price + '", '
    # serialized_=product += '"price": "' + =product.price.to_s + '", '

    serialized_=product += '"inventory": "' + =product.inventory + '", '
 
    # and end with the close brace
    serialized_=product += '}'
  end
end