class UserPlant < ApplicationRecord
  belongs_to :plant
  belongs_to :user
  has_many :waterings
  has_many :location_user_plants
  has_many :locations, through: :location_user_plants

  def last_watered
    if waterings.length === 0
      return Date.today
    else
      waterings.map { |h| h[:date] }.max
    end
  end

  def days_owned
    @d_o = (Date.today - date_aquired).to_i
    return @d_o
  end

  def next_wattering
    if plant.water_freq =~ /^Low/
      @next_w = last_watered + 20.days
    elsif plant.water_freq =~ /^Medium/
      @next_w = last_watered + 7.days
    elsif plant.water_freq =~ /^High/
      @next_w = last_watered + 3.days
    else
      @next_w = 7.days.from_now
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

  def days_since_last_watered
    @days_since = (Date.today - last_watered).to_i
    return @days_since
  end

  def water_level
    if needs_water
      @wl = 0
      return @wl
    elsif Date.today == last_watered
      @wl = 100
      return
      @wl
    end
    water_f = (next_wattering - last_watered).to_i

    @wl = (days_since_last_watered / water_f.to_f)

    @wl = (1 - @wl) * 100
    @wl = @wl.to_i
    # puts next_wattering, last_watered, water_f, days_since_last_watered, @wl

    return @wl
  end
end
