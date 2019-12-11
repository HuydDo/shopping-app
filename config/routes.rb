Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "home_pages#home"
  resources :items
  # resources :users, except: [:new]
  resources :users, only: [:new, :create, :show]

  # get '/signup', to: 'users#new', as: 'signup'
  get '/signin', to: 'session#new'
  post '/signin', to: 'session#create'
  delete '/session', to: 'session#destroy'

  resources :orders, only: [:create, :show, :edit, :update]
  # post '/orders', to: 'orders#create'
end
