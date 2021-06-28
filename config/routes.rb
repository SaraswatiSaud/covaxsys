# frozen_string_literal: true

# Rails routes
Rails.application.routes.draw do
  devise_for :users, controller: { registrations: 'users/registrations' }
  root to: 'dashboards#index'

  resources :dashboards
  resources :patients
  resources :appointments do
    post 'update_patient', on: :member
  end
end
