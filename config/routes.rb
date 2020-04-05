Rails.application.routes.draw do
  root to: 'pages#home'

  post '/invoice', to: 'pages#create'
  get '/invoice', to: 'pages#invoice'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
