Rails.application.routes.draw do
 
  resources :products
  devise_for :borrowers
  resources :borrowers, :only => [:show]
  devise_for :borrowees
  resources :borrowees
  root 'pages#index'
 
end
