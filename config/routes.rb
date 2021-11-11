Rails.application.routes.draw do
  get 'profiles/new'
  get 'profiles/show'
  get 'profiles/index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :posts
  root 'posts#index'
  resources :conversations do
    resources :messages
  end
end
