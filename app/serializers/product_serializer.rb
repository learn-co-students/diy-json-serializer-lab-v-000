class ProductSerializer
	def self.serialize(product)
		json = '{'
			# json += '"id": ' + product.id.to_s + ','
			json += '"name": "' + product.name + '",'
			json += '"price": ' + product.price.to_s + ',' unless product.price.nil?
			json += '"inventory": ' + product.inventory.to_s + ',' unless product.inventory.nil?
			json += '"description": "' + product.description + '"' unless product.description.nil?
		json += '}'
	end
end