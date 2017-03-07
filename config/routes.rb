Rails.application.routes.draw do
  namespace :customer do
    get 'customer_dashboard/index'
  end

  devise_for :customers
  ActiveAdmin.routes(self)
  get 'sign_up/create'
  get 'sign_up/get_auth_code'

    root :to => 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
