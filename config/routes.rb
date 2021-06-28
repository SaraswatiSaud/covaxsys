# frozen_string_literal: true

# Rails routes
Rails.application.routes.draw do
  devise_for :users
  root to: 'conversations#index'

  resources :dashboards
  resources :conversations do
    resources :messages
  end
end
