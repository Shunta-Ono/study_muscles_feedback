Rails.application.routes.draw do

  namespace :admin do
    get 'homes/top'
  end
  get 'homes/top'
  namespace :admin do
    get 'muscles/new'
    get 'muscles/index'
    get 'muscles/show'
    get 'muscles/edit'
  end
  namespace :admin do
    get 'genres/new'
    get 'genres/index'
    get 'genres/edit'
  end
  get 'notes/new'
  get 'notes/index'
  get 'notes/show'
  get 'notes/edit'
  get 'genres/index'
  get 'muscles/index'
  get 'muscles/show'
  get 'users/show'
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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
