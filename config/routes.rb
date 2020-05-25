Rails.application.routes.draw do

  root 'homes#top'

  devise_for :admins, controllers: {
    sessions: "admin/devise/sessions",
    passwords: "admin/devise/passwords",
    registrations: "admin/devise/registrations"
  }

  devise_for :users, controllers: {
    sessions: "users_devise/sessions",
    passwords: "users_devise/passwords",
    registrations: "users_devise/registrations"
  }
  #admin
  namespace :admin do
    resources :muscles
    resources :genres, except: [:show]
  end

  #user
  get 'homes/top'
  resources :users, only: [:show]
  resources :muscles, only: [:index,:show] do
    get 'search', on: :collection
  end
  resources :genres, only: [:index]
  resources :notes do
    resource :likes, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
    get 'search', on: :collection
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
