Rails.application.routes.draw do
  resources :order_details
  resources :orders
  resources :products
  resources :staffs
  resources :departments
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
