Rails.application.routes.draw do
  resources :rooms
  root 'pages#home'
  get '/dashboard', to: 'users#dashboard'
  get 'pages/home'
  get '/users/:id', to: 'users#show', as: 'user'

  post '/users/edit', to: 'users#update'

  resources :rooms do
    resources :reservations
end
  resources :reservations, only: [:create]

  devise_for :users,
  path: '',
  path_names: {sign_up: 'register', sign_in: 'login', edit: 'profile', sign_out: 'logout'},
  controllers: {registrations: 'registrations'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
