Rails.application.routes.draw do
  get 'likes/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users do
    resources :artworks, only: :index
    resources :comments, only: :index
  end

  resources :artworks do 
    resources :comments, only: :index
  end

  resources :users, only: [:update, :show, :destroy, :create]

  resources :artworks, only: [:update, :show, :index, :destroy, :create]

  resources :artworkshares, only: [:destroy, :create]

  resources :comments, only: [:index, :create, :destroy]


  # get '/users', to: 'users#index'
  # post '/users', to: 'users#create'
  # get '/users/new', to: 'users#new', as: 'new_user'
  # get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  # get '/users/:id', to: 'users#show', as: 'user'
  # patch '/users/:id', to: 'users#update'
  # put '/users/:id', to: 'users#update'
  # delete '/users/:id', to:'users#destroy'


end
