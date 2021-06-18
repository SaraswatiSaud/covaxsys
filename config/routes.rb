Rails.application.routes.draw do
  devise_for :users
  root to: 'homepage#index'

  resources :dashboards
  resources :patients
end
