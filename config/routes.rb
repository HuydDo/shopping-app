Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "home_pages#home"
  resources :items
  resources :users, only: [:new, :create, :show]
  resources :fullfillment, only: [:index, :show]

  get '/signin', to: 'session#new'
  post '/signin', to: 'session#create'
  delete '/session', to: 'session#destroy'

  resources :orders, only: [:create, :edit, :update, :destroy, :index]

  get '/auth/facebook/callback' => 'session#create'

 resources :items, only: [:show, :index] do
  resources :orders, only: [:show, :index, :new,:edit]
 end

end
