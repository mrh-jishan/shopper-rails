Rails.application.routes.draw do
  post 'authenticate', to: 'authentication#authenticate'
  resources :users, :addresses, :address_types
end
