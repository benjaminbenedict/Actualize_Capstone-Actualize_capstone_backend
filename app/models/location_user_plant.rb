class LocationUserPlant < ApplicationRecord
  belongs_to :user_plant
  belongs_to :locations
end
