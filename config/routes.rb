Rails.application.routes.draw do

  post "registrations/hook"

  resources :charges
  resources :organizations

  root to: 'organizations#index'
end
