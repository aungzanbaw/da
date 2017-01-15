Rails.application.routes.draw do

  get "login", to: "staffs#login"
  post "validate", to: "staffs#validate"
  get "logout", to: "staffs#logout"
  get "dashboard", to: "orders#unsolve"

  resources :details
  resources :orders
  resources :products
  resources :staffs
  resources :departments
  resources :customers
  root "staffs#login"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
