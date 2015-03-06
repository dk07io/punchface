class RewardsController < ApplicationController
  
  # def index
  # end

  def show
    @reward = Reward.find(params[:id]);
  end

  def new
    @reward = Reward.new
  end

  def create
    @reward = Reward.new(reward_params)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def reward_params
    params.require(:reward).permit(:description, :pledge_limit, :amount)
  end

end
