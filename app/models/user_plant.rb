class UserPlant < ApplicationRecord
  belongs_to :plant
  belongs_to :user
  has_many :waterings
  has_many :location_user_plants
  has_many :locations, through: :location_user_plants
end
