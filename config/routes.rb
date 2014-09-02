Rails.application.routes.draw do
  root :to => 'access#index'
  
  scope "(locale)", locale: /es|en|/ do
    devise_for :users
    resources :users    
  end
end
