Rails.application.routes.draw do
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'
  root "todo_lists#index"
  resources :todo_lists do
    resources :todo_items
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :sessions, only: [:new, :create, :destroy]

  get '/login' => "sessions#new", as: "login"
  get '/logout' => "sessions#destroy", as: "logout"
end
