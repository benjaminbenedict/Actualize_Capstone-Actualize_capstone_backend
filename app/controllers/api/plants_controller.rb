class Api::PlantsController < ApplicationController
  def index
    @plants = Plants.all
    renger "index.json.jb"
  end

  def show
    @plant = Plant.find_by(id: params[:id])
    render "show.json.jb"
  end
end
