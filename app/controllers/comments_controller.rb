class CommentsController < ApplicationController
  
  def show
    @message = Message.find(params[:id])
  end

  def create
    @message = @project.messages.build(message_params)
    @message.user = current_user
    if @message.save
      redirect_to projects_url, notice: "Message created successfully."
    else
      render 'projects/show'
    end
  end

  def destroy
    @message = Message.find(params[:id])
    @mesage.destroy
  end

  private 
  def private_params
  end

end
