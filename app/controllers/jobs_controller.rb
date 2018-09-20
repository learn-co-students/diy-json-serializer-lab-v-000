class JobsController < ApplicationController


	def index
		@jobs = Job.all 
	end

	def new
		@job = Job.new
	end


	def show
		@job = Job.find(params[:id])
	end

	def create 
		@job = Job.create(job_params)
		@job.save
		redirect_to jobs_path
	end

	def body
	    job = Job.find(params[:id])
	    render plain: job.c_desc
	end

	def edit
		@job = Job.find(params[:id])
	end


	def update
	    @job.update(job_params)
	    redirect_to job_path(@job)
	end

	def destroy
	end



	private 

	def job_params 
		params.require(:job).permit(:position, :company, :p_desc, :c_desc, :posted_date, :url)
	end


end
