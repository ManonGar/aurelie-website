Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'themes#index'
  resources :themes, only: [:index, :show]

  get 'pages/about'
  get 'pages/shop'
end
