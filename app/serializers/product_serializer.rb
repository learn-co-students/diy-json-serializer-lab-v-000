class ProductSerializer
	def self.serialize(product)
		product.to_json
	end
end