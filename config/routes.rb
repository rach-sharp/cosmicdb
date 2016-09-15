Rails.application.routes.draw do

  root 'application#index'

  resources :aliens, only: [:index, :show]
  resources :expansions, only: :index
end
