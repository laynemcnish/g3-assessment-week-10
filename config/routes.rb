Rails.application.routes.draw do
  root "home#index"

  resources :about
  resources :gif
end
