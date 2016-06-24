Rails.application.routes.draw do
 
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :category do
  	  resources :tintuc, show: [:only] 
  	  resources :subcategory, show: [:only]
    end
    
    resources :category do
  	  resources :subcategory, show: [:only]
    end
    
     resources :subcategory do
        resources :post, show: [:only]
      end
      
      resources :tintuc
      resources :post
    
    get "/sitemap" => "post#sitemap", format: :xml, as: :sitemap
    
    root "category#index"
   
    get '/news' => 'category#news'
    get '/video' => 'category#video'
    get '/tuvung' => 'category#tuvung'
    get '/trochoi' => 'category#trochoi'
    get '/baihat' => 'category#baihat'
    get '/nguphap' => 'category#nguphap'
   
    

end
