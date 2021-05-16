Rails.application.routes.draw do
  get 'parties/new'
  post 'parties/create', to: 'parties#create', as: 'parties'
  post 'friendships/create'

  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "welcome#index"

  resources :users do
    resources :dashboard, only: :index
  end

  resources :discover, only: :index

  resources :sessions, only: [:new, :create, :destroy]

end
