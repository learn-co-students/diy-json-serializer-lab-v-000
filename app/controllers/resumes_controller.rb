class ResumesController < ApplicationController


	def index
		@resumes = Resume.all
	end

	def new
		@resume = Resume.new
	end

	def show
		@resume = Resume.find(:id)
	end

	def create
		@resume = Resume.create(resume_params)
		@resume.save
		redirect_to resumes_path
	end

	def edit
	end

	def update
		@resume.update(resume_params)
		redirect_to resumes_path
	end

	def destroy
	end


	private 

	def resume_params 
		params.require(:resume).permit(:filename, :url, :description)
	end

end