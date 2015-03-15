class ReviewsController < ApplicationController

  # before_filter :ensure_logged_in, only: [:create, :destroy]
  before_filter :load_project

  def show
    @review = Review.find(params[:id])
  end

  def create
    @review = @project.reviews.build(review_params)
    @review.user = current_user
    if @review.save
      redirect_to projects_url, notice: "Review created successfully."
    else
      render 'projects/show'
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
  end

  private 
  def review_params
    params.require(:review).permit(:comment, :project_id)
  end

  def load_project
    @project = Project.find(params[:project_id]) 
  end

end
