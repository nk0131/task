Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  root to: 'taskapps#index'
  resources :taskapps do
    post :import, on: :collection
  end
  resources :users do
    post :confirm, action: :confirm_new, on: :new
  end
end
