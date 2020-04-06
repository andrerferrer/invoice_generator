Rails.application.routes.draw do
  root to: 'invoices#new'
  # resources :pages, only: [:new, :create, :show]
  resources :invoices, only: %i(create)

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
