Rails.application.routes.draw do

  root 'application#index'

  get '/about' => 'application#about'

  resources :aliens, only: [:index, :show]
  resources :expansions, only: :index
end
