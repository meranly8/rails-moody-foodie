Rails.application.routes.draw do
  root 'welcome#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/users/new', to: 'users#new'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'

  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/auth/:provider/callback', to: 'sessions#omniauth'

  resources :entries do
    resources :entry_provisions, only: [:index, :new, :create]
  end

  resources :provisions, only: [:index, :show, :new, :create]
  resources :entry_provisions
end
