class ProductSerializer
  
  def self.serialize(product)
    res= '{'
    res+= '"id" : '+product.id.to_s+','
    res+= '"name": "'+product.name+'",'
    res+= '"price": '+product.price.to_s+','
    res+= '"inventory": '+product.inventory.to_s+','
    res+= '"description": "'+product.description+'"'
    res+= '}'
    return res
  end


    
    
end