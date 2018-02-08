class ProductSerializer
	def self.serialize(product)
		json = '{'
			json += '"id": ' + product.id.to_s + ','
			json += '"name": ' + '"' + product.name + '",'
			json += '"price": ' + product.price.to_s + ','
			json += '"inventory": ' +  product.inventory.to_s + ',' 
			json += '"description": ' + '"' + product.description + '"'
		json += '}'
	end
end