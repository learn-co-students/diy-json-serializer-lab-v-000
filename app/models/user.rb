class User < ActiveRecord::Base
	has_many :user_jobs
	has_many :jobs, through: :user_jobs

	has_many :user_contacts
	has_many :contacts, through: :user_contacts

	has_many :resumes
end
