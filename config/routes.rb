GaMapQuote::Application.routes.draw do
  root to: "pages#root"

  get "/about", to: "pages#about"

  get "quotes/index"

  devise_for :admins
  devise_for :users

  resources :users, only: [ :edit, :update ]

  resources :quotes, only: [ :index, :new, :create, :show, :edit, :update, :destroy ]

end
