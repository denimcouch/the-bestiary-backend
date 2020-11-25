Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do 
      resources :users, only: [:index, :create, :show]
      resources :monsters, only: [:index, :show]
      resources :encounters, only: [:index, :create, :patch, :delete]
      resources :encounter_monsters, only: [:create, :delete]
      get '/users/login/:username', to: 'users#show_alt'
      post '/login', to: 'auth#create'
    end
  end
end
