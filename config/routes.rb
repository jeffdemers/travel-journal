Rails.application.routes.draw do
  get 'pages/index'

  root to: 'pages#index'


  get '/auth/:provider/callback', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'

  resources :journals do
    resources :entries
  end

get 'pages/map', to: 'pages#map', as: :map

end
