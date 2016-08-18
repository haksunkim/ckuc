Rails.application.routes.draw do
  get '/gallery', to: 'gallery#index', as: 'gallery' 

  resources :locales do
    resources :translations, constraints: { :id => /[^\/]+/ }
  end

  root to: 'static_pages#home'

  get '/about', to: 'static_pages#about', as: 'about'
  get '/contact', to: 'static_pages#contact', as: 'contact'
  get '/introduction', to: 'static_pages#introduction', as: 'introduction'
  get 'service_into', to: 'static_pages#service_info', as: 'service_info'
  get '/groups', to: 'static_pages#groups', as: 'groups'
  get 'news', to: 'static_pages#news', as: 'news'

  devise_for :users
  
  resources :photos
  
end
