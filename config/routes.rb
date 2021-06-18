# frozen_string_literal: true

# Rails routes
Rails.application.routes.draw do
  devise_for :users
  root to: 'homepage#index'

  resources :dashboards
  resources :patients
  resources :appointments do
    post 'update_patient', on: :member
  end
end
