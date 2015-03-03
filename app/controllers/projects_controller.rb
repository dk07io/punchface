
class ProjectsController < ApplicationController
  # load_and_authorize_resource

  def index
    @projects = Project.all
  end

#   def show
# 	  @projects = Projects.find(params[:id])
#   end


#   def new
#     @project = Project.new
#   end

#   def create
#     @project = Project.new(project_params)

#     if @project.save
#       redirect_to projects_url
#     else
#       render 'new'
#     end
#   end

#   def update
#   	@project =Project.find(params[:id])
#   end

#   def destroy
#   	@project =Project.find(params[:id])
#   	@project.destroy
#   	redirect_to project_path
#   end


#   private
#   def project_params
#     params.require(:project).permit(:name, :description, rewards_attributes: [:amount, :description, :_destroy])
#   end
end