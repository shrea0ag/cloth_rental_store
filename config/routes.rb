Rails.application.routes.draw do
  
  get 'carts/show'
  resources :searches
  resources :orders
  get '/cart', to: 'order_items#index'
  resources :order_items, path: 'cart/items'
  resources :products
  devise_for :borrowers
  resources :borrowers
  devise_for :borrowees
  resources :borrowees, :only => [:index]
  root 'pages#index'
 
end
