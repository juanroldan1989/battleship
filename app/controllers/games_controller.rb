class GamesController < ApplicationController

  before_action :set_opponent
  before_action :set_user

  helper_method :my_ships

  def show
  end

  private

  def my_ships
    @user.ships
  end

  def set_opponent
    case params[:id]
    when "1"
      @opponent = User.find 2
    when "2"
      @opponent = User.find 1
    end
  end

  def set_user
    @user = User.find params[:id]
  end
end
