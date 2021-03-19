class Api::UsdaController < ApplicationController
  def index
    response = HTTP.headers(:accept => "application/json").get("https://plants.usda.gov/api/plants/search?common_name=#{params[:search]}")
    data = response.parse
    render json: { message: data }
  end
end
