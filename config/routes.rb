Rails.application.routes.draw do

  get 'items_imports/new'
  get 'items_imports/create'
  get 'users/new'
 devise_for :users

  resources :items
  resources :items_imports, only: [:new, :create]



  mount RailsAdmin::Engine => '/', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  
end
