Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/login', to: 'users#login'
  post '/login', to: 'users#check_login'
  get '/logout', to: 'users#logout'
  get '/orders/edit-status', to: 'orders#edit_status'
  get 'orders/export-csv/:id', to: 'orders#export_csv'
  post 'orders/edit-status', to: 'orders#edit_status'
  resources :products
  resources :users
  resources :orders
end
