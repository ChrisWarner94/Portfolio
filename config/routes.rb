# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # home page route
  root to: 'pages#home'

  # show project route
  resources :projects, only: [:show] do
  end

  resource :contacts

  # test line
end
