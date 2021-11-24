Rails.application.routes.draw do
  devise_for :restaurants
  resources :restaurants, only: [:show, :update] do
    resources :categories, only: [:create]
  end
    resources :categories, except: [:create, :destroy, :index, :show, :edit, :new, :update] do
      resources :items, except: [:create, :destroy]
    end
    resources :categories, only: [:destroy]
    resources :items, only: [:destroy]
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/dashboard', to: 'dashboards#show', as: :dashboard
end
