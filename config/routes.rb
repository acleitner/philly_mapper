Rails.application.routes.draw do

  root to: "home#index"

  resources :maps
  resources :test

  post "maps/create-geographic-entity", to: "maps#create_geographic_entity"
end
