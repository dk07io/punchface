
class ProjectsController < ApplicationController
  # load_and_authorize_resource

  def index
    # Storing arrays into @projects
    @projects = if params[:search]
      # The code below will produce the same results
      # Project.where("name ILIKE?", "%#{params[:search]}%")
      Project.where("LOWER(name) LIKE LOWER(?)", "%#{params[:search]}%")
      # Project.where("LOWER(name) LIKE LOWER(?)", "%#{params[:search]}%")
    else
      Project.all
    end

    respond_to do |format|
      #renders index.html.erb
      format.html 
      #render index.js.erb
      format.js
    end
  end

  def show
	  @project = Project.find(params[:id])
    # if current_user
    #   @comment = @project.messages.build
    # end
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
    @project = Project.find(params[:id])
  end

  def update
  	@project = Project.find(params[:id])
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


