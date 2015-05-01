Rails.application.routes.draw do
  get 'home/index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :contacts, only: [:new, :create]

  root 'home#index'

  get :load_more, to: 'home#load_more'
end
