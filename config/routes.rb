Rails.application.routes.draw do
  
  get 'users/browse' , :as => "browse"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  root 'a_thousand_word#home'

  get 'a_thousand_word/home'

  get 'users/show'

  get 'sessions/new'

  get 'profiles/show'

  get "log_out" =>"sessions#destroy"#, :as => "log_out"
  get "log_in" =>"sessions#new"#, :as => "log_in"
  get "sign_up" =>"users#new"#, :as => "sign_up"
  
  
  resources :users
  resources :profiles



  devise_for :devise_users, controllers: { registration: 'devise_users/registrations' }




  #root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
