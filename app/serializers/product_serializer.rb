class ProductSerializer
	def self.serialize(product)
		serialized_product = '{'
		# serialized_product += '"id": ' + product.id.to_s + ','
		serialized_product += '"name": "' + product.name + '",'
		serialized_product += '"price": "' + product.price.to_s + '",'
		serialized_product += '"inventory": ' + product.inventory.to_s + ','
		serialized_product += '"description": "' + product.description + '"'
		serialized_product += '}'
	end
end

    # serialized_post += '"id": ' + post.id.to_s + ', '
    # serialized_post += '"title": "' + post.title + '", '
    # serialized_post += '"description": "' + post.description + '", '
 
    # # the author association can also be represented in JSON
    # serialized_post += '"author": {'
    # serialized_post += '"name": "' + post.author.name + '"}'
 
    # # and end with the close brace
    # serialized_post += '}'