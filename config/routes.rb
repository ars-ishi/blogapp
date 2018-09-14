Rails.application.routes.draw do
  devise_for :users
  root 'articles#index'
  resources :articles do
    member do
      post "add", to: "favorites#create"
    end
  end
  resources :favorites, only: [:destroy]
end
