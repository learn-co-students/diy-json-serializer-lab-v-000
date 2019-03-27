class AddFieldsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :inventory, :integer, :default => 0
    add_column :products, :description, :string, :default => "Lorem"
  end
end
