Rails.application.routes.draw do

  devise_for :users
  root to: 'organizations#index'

  post "registrations/hook"

  resources :charges
  resources :organizations

  resources :users

end
