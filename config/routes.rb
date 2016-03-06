Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'maps#show'

namespace :api do
    get "places" => 'places#index'
    post "places" => 'places#create'
    put "places/:id" => 'places#update'
  end


end
