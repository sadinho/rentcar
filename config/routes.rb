Rails.application.routes.draw do
root to:  "alimentar_carro#index"
  get 'alimentar_carro/index'
  get 'alimentar_carro/import' => 'carros#my_import'
  get 'users/new'
  get 'admin/import'
 devise_for :users
 resources :carros do
 collection {post :import}
 end
 





  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  
end
