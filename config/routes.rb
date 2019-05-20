Rails.application.routes.draw do
  
  resources :order_items
  resources :products
  devise_for :borrowers
  resources :borrowers
  devise_for :borrowees
  resources :borrowees, :only => [:index]
  root 'pages#index'
 
end
