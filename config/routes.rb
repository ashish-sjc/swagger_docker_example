Rails.application.routes.draw do
  resources :users, except: [:new, :edit]
  
  resources :apidocs, only: [:index]

  root 'users#index'
end
