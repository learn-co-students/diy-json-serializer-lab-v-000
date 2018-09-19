class AddFilenameToResume < ActiveRecord::Migration
  def change
    add_column :resumes, :filename, :string
  end
end
