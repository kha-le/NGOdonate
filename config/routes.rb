Rails.application.routes.draw do
  devise_for :users
  root to: 'organizations#index'

  resources :organizations

  resources :users

end
