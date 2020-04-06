Rails.application.routes.draw do
  root to: 'invoices#new'
  resources :invoices, only: %i(create index)

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
