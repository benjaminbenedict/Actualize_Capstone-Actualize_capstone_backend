Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    get "/plants" => "plants#index"
    get "/plants/:id" => "plants#show"

    get "/user_plants" => "user_plants#index"
    get "/user_plants/:id" => "user_plants#show"
  end
end
