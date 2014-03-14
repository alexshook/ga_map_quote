GaMapQuote::Application.routes.draw do

  mount Dashing::Engine, at: Dashing.config.engine_path

  root to: "quotes#index"
  get "/about", to: "pages#about"

  devise_for :admins

  resources :quotes, only: [ :index, :new, :create, :show, :edit, :update, :destroy ]

end
