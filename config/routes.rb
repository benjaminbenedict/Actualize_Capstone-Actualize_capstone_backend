Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    get "/plants" => "plants#index"
    get "/plants/:id" => "plants#show"
    post "/plants" => "plants#create"
    patch "/plants/:id" => "plants#update"
    delete "/plants/:id" => "plants#destroy"

    get "/user_plants" => "user_plants#index"
    get "/user_plants/:id" => "user_plants#show"
    post "/user_plants" => "user_plants#create"
    patch "/user_plants/:id" => "user_plants#update"
    delete "/user_plants/:id" => "user_plants#destroy"

    get "/ratings" => "ratings#index"
    post "/ratings" => "ratings#create"
    delete "/ratings/:id" => "ratings#destroy"

    get "/locations" => "locations#index"
    get "/locations/:id" => "locations#show"
    post "/locations" => "locations#create"
    delete "/locations/:id" => "locations#destroy"

    get "/location_user_plants" => "location_user_plants#index"
    get "/location_user_plants/:id" => "location_user_plants#show"

    get "/waterings" => "waterings#index"
    get "/waterings/:id" => "waterings#show"
    post "/waterings" => "waterings#create"
    delete "/waterings/:id" => "waterings#destroy"

    get "/pictures" => "pictures#index"
    get "/pictures/:id" => "pictures#show"
    post "/pictures" => "pictures#create"

    get "/usda" => "usda#index"
    get "/calander" => "calander#index"
  end
end
