Rails.application.routes.draw do

  resources :charges
  resources :organizations

  root to: 'organizations#index'
end
