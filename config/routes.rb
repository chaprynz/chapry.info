Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  
    resources :category do
  	  resources :post, only: [:show]
    end
  
  root "category#index"

  
end
