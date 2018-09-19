class AddUrlToResume < ActiveRecord::Migration
  def change
    add_column :resumes, :url, :string
  end
end
