Rails.application.routes.draw do
  root to: "companies#index"
  resources :companies
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
