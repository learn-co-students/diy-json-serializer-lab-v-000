class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :position
      t.string :company
      t.string :p_desc
      t.string :c_desc
      t.datetime :posted_date
      t.string :url

      t.timestamps null: false
    end
  end
end
