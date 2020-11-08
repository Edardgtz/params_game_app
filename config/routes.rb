Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "segment_parameter/:guess" => "params#guess_a_number"
    get "/a_game" => "params#letter_a"
    get "/guess_number" => "params#guess_a_number"
    post "/body_params" => "params#body"
  end
end
