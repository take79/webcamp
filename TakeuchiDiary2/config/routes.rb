Rails.application.routes.draw do
  devise_for :users
  resources :articles do
    resource :likes, only: [:create, :destroy]
  end
  root 'articles#index'
  get 'users', to: 'users#index', as: 'users'
  get 'users/:id', to: 'users#show', as: 'user'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
