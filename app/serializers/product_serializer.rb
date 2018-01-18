class ProductSerializer

	def self.serialize(object)
		serialized_object = "{"
		serialized_object += '"id": ' + object.id.to_s + ', '
		serialized_object += '"name": "' + object.name + '", '
		serialized_object += '"price": ' + object.price.to_s + ', '
		serialized_object += '"inventory": ' + object.inventory.to_s + ', '
		serialized_object += '"description": "' + object.description + '"'
		serialized_object += "}"
	end

end