# class RewardsController < ApplicationController
  
  # def index
  #   @rewards = Reward.all
  # end

  # def show
  #   @reward = Reward.find(params[:id])
  # end

  # def new
  #   @reward = Reward.new
  # end

  # def create
  #   @reward = Reward.new(reward_params)

  #   if @reward.save
  #     redirect_to rewards_url
  #   else
  #     render 'new'
  #   end
  # end

  # def edit
  #   @reward = Reward.find(params[:id])
  # end

  # def update
  #   @reward = Reward.find(params[:id])
  #   if @reward.update_attributes(reward_params)
  #     redirect_to reward_path(@reward)
  #   else
  #     # render :edit
  #     redirect_to edit_project_reward_path(@project, @reward)
  #   end
  # end

  # def destroy
  #   @reward = Reward.find(params[:id])
  #   @reward.destroy
  #   redirect_to rewards_path
  # end

  # private
  # def reward_params
  #   params.require(:reward).permit(:description, :pledge_limit)
#   end

# end
