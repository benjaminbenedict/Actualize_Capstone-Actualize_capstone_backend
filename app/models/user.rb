class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :plants, through: :user_plants
  has_many :pictures
  has_many :ratings
end
