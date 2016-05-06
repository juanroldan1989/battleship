class User < ActiveRecord::Base

  has_many :ships, dependent: :destroy
  has_many :shots, dependent: :destroy

  def ships_locations
    ships.collect {|ship| ship.location }.flatten
  end

end
