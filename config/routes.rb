Rails.application.routes.draw do
  devise_for :users
  root 'articles#index'
  resources :articles do
      post 'add' =>  'favorites#create'
      delete 'add' => 'favorites#destroy'
  end
end
