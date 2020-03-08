Rails.application.routes.draw do

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
