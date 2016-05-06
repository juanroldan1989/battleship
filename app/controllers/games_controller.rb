class GamesController < ApplicationController
  before_action :set_user

  def show
    
  end

  private

  def set_user
    @user = User.find shot_params[:user_id]
  end

end
