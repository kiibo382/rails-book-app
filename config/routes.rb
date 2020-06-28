Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :admin_users
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/signup',  to: 'users#new'
  resources :users
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :authors
  resources :books
  resources :books do
    resources :likes, only: [:create, :destroy]
  end
  resources :books do
    resources :comments, only: [:create, :destroy]
  end
  resources :authors do
    resources :follows, only: [:create, :destroy]
  end
end