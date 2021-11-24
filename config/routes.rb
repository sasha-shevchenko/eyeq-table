Rails.application.routes.draw do
  # For details on the DSL a vailable within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :restaurants

  resources :restaurants, only: [:show, :update]

  resources :categories, only: [:create, :destroy, :index] do
    resources :items, only: [:new, :create, :edit, :update]
  end

  resources :items, only: :destroy

  get '/dashboard', to: 'dashboards#show', as: :dashboard
  root to: 'dashboards#show'

  # resources :categories, only: [:create, :destroy] do
  #   resources :items, only: [:new, :create, :edit, :update]
  # end
  # get '/dashboard', to: 'dashboards#show', as: :dashboard
  # resources :restaurants, only: :update
  # resources :items, only: :destroy
end
