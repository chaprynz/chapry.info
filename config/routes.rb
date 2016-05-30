Rails.application.routes.draw do
  

  get 'tintuc/index'

  get 'tintuc/show'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :category do
  	  resources :subcategory, show: [:only] 
    end
    
     resources :subcategory do
        resources :post
      end
    
    root "category#index"
    
    resources :tintuc
   
    get '/tintuc' => 'tintuc#index'
    

end
