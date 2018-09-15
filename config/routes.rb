Rails.application.routes.draw do
  devise_for :users
  get 'users/:id' => 'users#show'
  root 'articles#index'
  resources :articles do
      post 'add' =>  'favorites#create'
      delete 'add' => 'favorites#destroy'
  end
end
