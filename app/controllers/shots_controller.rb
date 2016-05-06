class ShotsController < ApplicationController

  before_action :set_user

  def create
    @shot = create_shot_service.call

    respond_to do |format|
      format.js
    end
  end

  private

  def create_shot_service
    CreateShot.new(shot_params)
  end

  def set_user
    @user = User.find shot_params[:user_id]
  end

  def shot_params
    params.permit(:user_id, :location)
  end
end
