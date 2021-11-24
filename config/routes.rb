Rails.application.routes.draw do
  devise_for :restaurants
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :categories, only: [:create, :destroy] do
    resources :items, only: [:new, :create, :edit, :update]
  end
  get '/dashboard', to: 'dashboards#show', as: :dashboard
  resources :restaurants, only: :update
  resources :items, only: :destroy
end
