Rails.application.routes.draw do
  devise_for :admin_users
  devise_for :users
  root 'groups#index'
  resources :users, only: [:index, :edit, :update, :destroy]
  resources :groups, only: [:new, :create, :edit, :update] do
    resources :comments, only: [:index, :create]

    namespace :api do
      resources :comments, only: :index, defaults: { format: 'json' }
    end
  end
  resources :syousais, only: [:index]
end
