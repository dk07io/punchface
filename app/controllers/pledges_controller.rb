class PledgesController < ApplicationController

 # def index
 #    @pledges = Pledge.all
 #  end

#show all pledges for this pledge
  def show
    @pledge = Pledge.find(params[:id])
  end

#create a pledge for this pledge
  def new
    @pledge = Pledge.new
  end

#save the newly created pledge for this pledge
  def create
    @pledge = Pledge.new(pledge_params)

    if @pledge.save
      redirect_to pledges_url, notice: "You have now made a pledge!"
    else
      flash[:alert] = @pledge.errors.full_messages.to_sentence
      render 'new'
    end
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