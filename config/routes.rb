Rails.application.routes.draw do
 
  resources :products
  devise_for :borrowers
  resources :borrowers, :only => [:show]
  devise_for :borrowees
  
  # namespace :dashboard do
  # 	root 'dashboard#index'
  # end
  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
