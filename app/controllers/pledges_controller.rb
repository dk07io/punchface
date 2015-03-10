class PledgesController < ApplicationController

 # def index
 #    @pledges = Pledge.all
 #  end

# #show all pledges for this pledge
#   def show
#     @pledge = Pledge.find(params[:id])
#   end

# #create a pledge for this pledge
  def new
    @pledge = Pledge.new
  end

#save the newly created pledge for this pledge
  def create
    @reward = Reward.find params[:reward_id]
    @project = @reward.project

    @pledge = @project.pledges.new(user: current_user, reward: @reward, amount: @reward.amount)

    unless @pledge.save
      flash[:alert] = "Your pledge saved. Your are now the proud contributor to <%=@project.name %>. <img src='http://placehold.it/250/ffffff/000000'>".html_safe
    end
    redirect_to project_path(@project)
  end

#can't edit a donor pledge
  # def edit
  #   @pledge =Pledge.find(params[:id])
  # end
#can't update a donor pledge
  # def update
  #   @pledge =Pledge.find(params[:id])
  #   if @pledges.update_attributes(pledge_params)
  #   redirect_to pledges_path(@pledge)
  #     else
  #     render :edit
  #   end
  # end
#can't destroy a donor pledge
  # def destroy
  #   @pledge =Pledge.find(params[:id])
  #   @pledge.destroy
  #   redirect_to pledges_path
  # end


  private
  def pledge_params
    params.require(:pledge).permit(:amount)
  end
#end

#
end