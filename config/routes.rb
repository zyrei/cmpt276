Rails.application.routes.draw do
  get 'profile/index'

  get 'atw/home'

  devise_for :users, controllers:{ registrations: 'users/registrations'}

  root 'atw#home'

  resources :profile

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
