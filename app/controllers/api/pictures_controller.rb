class Api::PicturesController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  def index
    @pictures = Picture.all
    if params["search"]
      @pictures = @pictures.where("url ILIKE ?", "%#{params["search"]}%")
    end
    if params["sort"] && params["sort_order"]
      @pictures = @pictures.order("url #{params["sort_order"]}")
    else
      @pictures = Picture.order("id asc")
    end

    render "index.json.jb"
  end

  def show
    @picture = Picture.find_by(id: params["id"])
    render "show.json.jb"
  end

  def create
    response = Cloudinary::Uploader.upload(params[:image], resource_type: :auto)
    cloudinary_url = response["secure_url"]
    @picture = Picture.new(
      img_url: cloudinary_url,
      plant_id: params["plant_id"],
      user_id: current_user.id,
    )
    if @picture.save
      render "show.json.jb"
    else
      render json: { errors: @picture.errors.full_messages }, status: 422
    end
  end
end
