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
      scientific_name: params["scientific_name"],
      common_name: params["common_name"],
      plant_family: params["plant_family"],
      description: params["description"],
      light: params["light"],
      temperature: params["temperature"],
      humidity: params["humidity"],
      water_freq: params["water_freq"],
      soil_type: params["soil_type"],
      difficulty_level: params["difficulty_level"],
    )
    @plant.save
    if params[:image]
      response = Cloudinary::Uploader.upload(params[:image], resource_type: :auto)
      cloudinary_url = response["secure_url"]
      @picture = Picture.new(
        img_url: cloudinary_url,
        plant_id: @plant.id,
        user_id: current_user.id,
      )
      @picture.save
    end
    render "show.json.jb"
    # if @plant.save
    #   response = Cloudinary::Uploader.upload(params[:image], resource_type: :auto)
    #   cloudinary_url = response["secure_url"]
    #   Picture.create(img_url: cloudinary_url, plant_id: @plant.id, user_id: current_user.id)
    #   render "show.json.jb"
    # else
    #   render json: { errors: @plant.errors.full_messages }, status: 422
    # end

    # if @plant.save
    #   Image.create(plant_id: @plant.id, url: params[:image_url])
    #   render "show.json.jb"
    # else
    #   render json: { errors: @plant.errors.full_messages }, status: 422
    # end
  end

  def update
    @plant = Plant.find_by(id: params["id"])
    @plant.scientific_name = params["scientific_name"] || @plant.scientific_name
    @plant.common_name = params["common_name"] || @plant.common_name
    @plant.plant_family = params["plant_family"] || @plant.plant_family
    @plant.description = params["description"] || @plant.description
    @plant.light = params["light"] || @plant.light
    @plant.temperature = params["temperature"] || @plant.temperature
    @plant.humidity = params["humidity"] || @plant.humidity
    @plant.water_freq = params["water_freq"] || @plant.water_freq
    @plant.soil_type = params["soil_type"] || @plant.soil_type
    @plant.difficulty_level = params["difficulty_level"] || @plant.difficulty_level
    if @plant.save
      render "show.json.jb"
    else
      render json: { errors: @plant.errors.full_messages }, status: 422
    end
  end

  def destroy
    plant = Plant.find_by(id: params["id"])
    plant.destroy
    render json: { message: "Plant Incinerated" }
  end
end
