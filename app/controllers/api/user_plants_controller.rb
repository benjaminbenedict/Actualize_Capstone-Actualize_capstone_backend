class Api::UserPlantsController < ApplicationController
  before_action :authenticate_user

  def index
    @user_plants = UserPlant.all.where(user_id: current_user.id)
    render "index.json.jb"
  end

  def show
    @user_plant = UserPlant.where(user_id: current_user.id).find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @user_plant = UserPlant.new(
      user_id: current_user.id,
      plant_id: params["plant_id"],
      date_aquired: params["date_aquired"],
    )
    @user_plant.save
    render "show.json.jb"
  end

  def destroy
    user_plant = UserPlant.where(user_id: current_user.id).find_by(id: params[:id])
    user_plant.destroy
    render json: { message: "Plant Dead" }
  end
end
