class User < ActiveRecord::Base

  has_many :ships, dependent: :destroy
  has_many :shots, dependent: :destroy

end
