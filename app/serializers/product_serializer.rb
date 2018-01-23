class ProductSerializer
  def self.serialize(product)
    endstr = '{'
    endstr += '"name": "' + product.name + '", '
    endstr += '"description": "' + product.description + '", '
    endstr += '"inventory": ' + product.inventory.to_s + ', '
    endstr += '"price": ' + product.price.to_s 
    endstr += '}'
  end
end