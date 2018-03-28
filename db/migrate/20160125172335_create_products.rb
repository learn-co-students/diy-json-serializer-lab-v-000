class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.integer :inventory, default: 1
      t.string  :description, default: 'no description provided'
      t.timestamps null: false
    end
  end
end
