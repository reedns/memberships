Rails.application.routes.draw do
  devise_for :users
  root 'groups#index'

  resources :groups
  resources :users, only: [:show]
resources :member_associations, only: [:create]
end
