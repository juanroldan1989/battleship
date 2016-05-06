class Ship < ActiveRecord::Base

  belongs_to :user

  validates :user, presence: true

  # ship sunk
  def is_finished?
    location.sort == shots_received.sort
  end
end
