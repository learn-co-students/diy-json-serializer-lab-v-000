=begin
    Product schema:

    create_table "products", force: :cascade do |t|
        t.string   "name"
        t.integer  "price"
        t.datetime "created_at",  null: false
        t.datetime "updated_at",  null: false
        t.integer  "inventory"
        t.string   "description"
    end
=end

class ProductSerializer
    def self.serialize(product)
        p = product
        sp = serialized_product = ""
        
        sp = open_curly
            sp += to_json('id', p.id) + comma
            sp += to_json('name', p.name) + comma
            sp += to_json('price', p.price) + comma 
            sp += to_json('inventory', p.inventory) + comma
            sp += to_json('description', p.description)
        sp += close_curly
    end

    private

    def self.to_json(key, value = nil)
        result = quote_wrap(key) + colon

        if value
            value = (String == value.class) ? 
            quote_wrap(value) : value.to_s

            result += value
        end

        result
    end

    def self.close_curly
        '}'
    end

    def self.colon
        ': '
    end

    def self.comma
        ', '
    end

    def self.open_curly
        '{'
    end

    def self.quote_wrap(value)
        '"' + value + '"'
    end
end