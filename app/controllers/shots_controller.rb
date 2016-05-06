class ShotsController < ApplicationController

  before_action :set_user

  def create
    
  end

  private

  def set_user
    @user = User.find shot_params[:user_id]
  end

  def shot_params
    params.require(:shot).permit(:user_id, :location)
  end
end
