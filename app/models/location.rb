class Location < ApplicationRecord
  has_many :location_user_plants
  has_many :user_plants, through: :location_user_plants
end
