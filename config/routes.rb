Rails.application.routes.draw do
  root :to => 'home#index'
  devise_for :customers

  namespace :customer do
    get 'customer_dashboard/index'
  end

  ActiveAdmin.routes(self)
  get 'sign_up/create'
  get 'sign_up/get_auth_code'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
