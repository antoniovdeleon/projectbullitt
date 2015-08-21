class TasksController < ApplicationController

	def index
		@task = Task.all
		render :index
	end 

	def new
		@npo = Npo.find(params[:npo_id])
		@task = Task.new
		render :new
	end

	def create
		@npo = Npo.find(params[:npo_id])
		task = @npo.tasks.create(task_params)
		task.save
		redirect_to npo_path(@npo)		
	end

	def show 
		@task = Task.find(params[:id])
		@npo = Npo.find(params[:id])
		render :show
	end

	def edit
		@npo = Npo.find(params[:id])
		@task = Task.find(params[:id])
		render :edit
	end

	def update
	  @task = Task.find(params[:id])
	  @npo = @task.npo_id 
	  # if current_user.@npos.include? @npo
	  	@task.update_attributes(task_params)
	  	redirect_to npo_path(@npo)
	  # else 
	  # 	redirect_to root_path
	  # end
	end

	def destroy
	end

	private
	
	def task_params
		params.require(:task).permit(:issue, :description)
	end

end


