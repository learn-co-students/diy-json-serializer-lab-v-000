class AddResumeIdToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :resume_id, :integer
  end
end
