
class ProjectsController < ApplicationController
  # load_and_authorize_resource

  def index
    @projects = Project.all
  end

  def show
	  @project = Project.find(params[:id])
  end


  def new
    @project = Project.new
    # Don't need the code below anymore due to cocoon gem!
    # 3.times { @project.rewards.build } 
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to projects_url
    else
      render 'new'
    end
  end

  def edit
    @project =Project.find(params[:id])
  end

  def update
  	@project =Project.find(params[:id])
    if @project.update_attributes(project_params)
    redirect_to project_path(@project)
      else
      render :edit
    end 
  end

  def destroy
  	@project =Project.find(params[:id])
  	@project.destroy
  	redirect_to projects_path
  end


  private
  def project_params
    params.require(:project).permit(:name, :description, :funding_goal, :start_date, :end_date, rewards_attributes: [:id, :pledge_limit, :amount, :description, :_destroy])
  end
end