class Api::PlantsController < ApplicationController
  def index
    @plants = Plant.all
    if params["search"]
      @plants = @plants.where("name ILIKE ?", "%#{params[:search]}%")
    end
    render "index.json.jb"
  end

  def show
    @plant = Plant.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @plant = Plant.new(
      name: params["name"],
      price: params["price"],
      description: params["description"],
      supplier_id: params["supplier_id"],
    )
    @plant.save
    render "show.json.jb"

    # if @plant.save
    #   Image.create(plant_id: @plant.id, url: params[:image_url])
    #   render "show.json.jb"
    # else
    #   render json: { errors: @plant.errors.full_messages }, status: 422
    # end
  end
end
