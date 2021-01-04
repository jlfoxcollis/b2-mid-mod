Rails.application.routes.draw do
  resources :actors, only: [:show]
  resources :movies, only: [:show]
  resources :studios, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
