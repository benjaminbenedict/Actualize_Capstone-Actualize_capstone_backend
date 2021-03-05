class Api::UserPlantsController < ApplicationController
  def index
    @user_plants = UserPlants.all
    renger "index.json.jb"
  end

  def show
    @user_plant = UserPlant.find_by(id: params[:id])
    render "show.json.jb"
  end
end
