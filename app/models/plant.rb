class Plant < ApplicationRecord
  has_many :pictures
  has_many :ratings
  has_many :users, through: :user_plants

  def primary_image_url
    if pictures.length > 0
      pictures[0].img_url
    else
      "https://thumbs.dreamstime.com/b/no-image-available-icon-flat-vector-no-image-available-icon-flat-vector-illustration-132482930.jpg"
    end
  end
end
