Rails.application.routes.draw do

  root to: "home#index"

  resources :maps, path: 'maps'

  post "maps/create-geographic-entity", to: "maps#create_geographic_entity"
end
