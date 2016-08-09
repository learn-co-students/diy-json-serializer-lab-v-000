class ProductSerializer


  def self.serialize(product)
    serialize = '{'
    serialize += '"name": "' + product.name + '", '
    serialize += '"price": ' + product.price.to_s + ', '
    serialize += '"inventory": ' + product.inventory.to_s + ', '
    serialize += '"description": "' + product.description + '"}'
    serialize
   



  end


end