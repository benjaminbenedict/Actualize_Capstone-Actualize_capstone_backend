class Api::WateringsController < ApplicationController
  before_action :authenticate_user

  def index
    @waterings = Watering.all.where(user_plant_id: UserPlant.all.where(user_id: current_user.id))
    render "index.json.jb"
  end

  def show
    @watering = Watering.where(user_plant_id: UserPlant.all.where(user_id: current_user.id)).find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @watering = Watering.new(
      user_plant_id: params["user_plant_id"],
      date: params["date"],
    )
    @watering.save
    render "show.json.jb"
  end
end
