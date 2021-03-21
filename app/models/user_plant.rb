class UserPlant < ApplicationRecord
  belongs_to :plant
  belongs_to :user
  has_many :waterings
  has_many :location_user_plants
  has_many :locations, through: :location_user_plants

  def last_watered
    waterings.map { |h| h[:date] }.max
  end

  def next_wattering
    if plant.water_freq =~ /^Low/
      @next_w = last_watered + 20.days
    elsif plant.water_freq =~ /^Medium/
      @next_w = last_watered + 7.days.days
    elsif plant.water_freq =~ /^High/
      @next_w = last_watered + 3.days.days
    else
      @next_w = 7.days.days.from_now
    end
    return @next_w
  end

  def needs_water
    if Date.today > next_wattering
      true
    else
      false
    end
  end
end
