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
      respond_to do |format|
        format.html do
          redirect_to project_path(@review.project), notice: "Review created successfully."
        end
        format.js # renders creat.js.erb
      end
    else
      render 'projects/show'
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy #does creat.js.erb
  end

  private 
  def review_params
    params.require(:review).permit(:comment, :project_id)
  end

  def load_project
    @project = Project.find(params[:project_id]) 
  end

end
