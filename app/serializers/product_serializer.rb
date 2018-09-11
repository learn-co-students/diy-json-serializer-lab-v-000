class ProductSerializer

  # t.string   "name"
  # t.integer  "price"
  # t.datetime "created_at",  null: false
  # t.datetime "updated_at",  null: false
  # t.integer  "inventory"
  # t.string   "description"

  def self.serialize(product)
    serialized_product = '{'
    serialized_product += '"id": ' + product.id.to_s + ', '
    serialized_product += '"name": "' + product.name + '", '
    serialized_product += '"description": "' + product.description + '", '
    serialized_product += '"inventory": ' + product.inventory.to_s + ', '
    serialized_product += '"price": ' + product.price.to_s + ' '
    serialized_product += '}'
  end

end
