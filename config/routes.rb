Rails.application.routes.draw do
  # For details on the DSL a vailable within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :restaurants

  resources :restaurants, only: [:show, :update] do
    resources :categories, only: [:index]
  end

  resources :categories, only: [:create, :destroy] do
    resources :items, only: [:index, :new, :create, :edit, :update]
  end

  resources :items, only: :destroy do
    resources :session_items, only: [:create]
  end

  resources :session_items, only: [:index, :destroy] do
    collection do
      get "status", as: :status
    end
  end

  get '/dashboard', to: 'dashboards#show', as: :dashboard
  root to: 'dashboards#show'

  resources :tables, only: [] do
    resources :sessions, only: :new
  end

  # resources :categories, only: [:create, :destroy] do
  #   resources :items, only: [:new, :create, :edit, :update]
  # end
  # get '/dashboard', to: 'dashboards#show', as: :dashboard
  # resources :restaurants, only: :update
  # resources :items, only: :destroy
end
