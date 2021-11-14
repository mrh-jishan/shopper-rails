Rails.application.routes.draw do
  post 'login', to: 'auth#login'
  post 'register', to: 'auth#register'
  resources :users, :addresses, :address_types
end
