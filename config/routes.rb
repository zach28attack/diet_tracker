Rails.application.routes.draw do
  resources :foods
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "foods#index"
   resources :users, only: [:new, :index, :create]
   
end
