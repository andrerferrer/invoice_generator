Rails.application.routes.draw do
  root to: 'pages#home'

  # resources :notas, only: [:new, :create, :show]

  post "/create_nota", to: "notas#create"

  get "/nota", to: "notas#show"

end
