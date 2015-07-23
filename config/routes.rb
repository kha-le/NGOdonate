Rails.application.routes.draw do

  devise_for :users
  root to: 'organizations#index'

  post "registrations/hook"

  resources :organizations do
    resources :charges
  end
  resources :users

end
