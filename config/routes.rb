Rails.application.routes.draw do

  resources :charges

  root to: 'organizations#index'
end
