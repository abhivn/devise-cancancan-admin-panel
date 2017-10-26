Rails.application.routes.draw do
  resources :profiles
  get 'users/index'

  get 'home/index'

  resources :workers
  resources :books
  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'home#index'
  get '/users', to: 'users#index'
  get '/role', to: 'users#change_role'
  get '/del_user/:id', to: 'users#delete_user'
  get '/edit_user/:id', to: 'users#edit_user'
  post '/update_user/', to: 'users#update_user'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
