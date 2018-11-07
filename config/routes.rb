Rails.application.routes.draw do
  root to: "controller#action"

  resources :restaurants do
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    member do
      # Everything here is nested under /restaurants/:id
      # get '/reviews', to: "restaurants#chef"
      # /restaurants/:id/chef
      get '/reviews', to: 'reviews#new'
    end
    resources :reviews, only: [ :new, :create]
  end
end
