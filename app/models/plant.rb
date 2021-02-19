class Plant < ApplicationRecord
  has_many :pictures
  has_many :ratings
  has_many :users, through: :user_plants
end
