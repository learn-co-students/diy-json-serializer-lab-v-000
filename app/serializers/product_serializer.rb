class ProductSerializer

	def self.serialize(product)
		{
			"name" => product.name,
			"price" => product.price,
			"inventory" => product.inventory,
			"description" => product.description
		}.to_json
	end
end


		  # create_table "products", force: :cascade do |t|
    # t.string   "name"
    # t.integer  "price"
    # t.datetime "created_at",  null: false
    # t.datetime "updated_at",  null: false
    # t.integer  "inventory"
    # t.string   "description"

