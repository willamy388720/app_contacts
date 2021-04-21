Rails.application.routes.draw do
  root to: 'static_pages#index'

  get '/about', to: 'static_pages#about'
  get '/contato', to: 'static_pages#contact'
  get '/entrar', to: 'sessions#new'
  post '/entrar', to: 'sessions#create'
  delete '/sair', to: 'sessions#destroy'

  resources :contacts
  resources :users, only: %i[new create show]
end
