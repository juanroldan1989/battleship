class ShipsController < ApplicationController

  before_action :set_ship

  def update
    @ship.update(
      location: ship_params[:location]
    )

    render nothing: :true, status: :ok
  end

  private

  def set_ship
    @ship = Ship.find ship_params[:id]
  end

  def ship_params
    params.permit(:id, :location)
  end
end
