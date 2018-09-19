class JobsController < ApplicationController


	def index
		@jobs = Job.all 
	end

	def new
		@job = Job.new
	end




	def show
		@job = Job.find(1)
	end

	def create 
		@job = Job.create(job_params)
		@job.save
		redirect_to jobs_path
	end


	def update
	end

	def destroy
	end



	private 

	def job_params 
		params.require(:job).permit(:position, :company, :p_desc, :c_desc, :posted_date, :url)
	end


end
