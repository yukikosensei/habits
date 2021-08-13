Rails.application.routes.draw do
  root 'home#index'
  resources :home
  resources :habits
  resources :records
end
