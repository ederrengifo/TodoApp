Rails.application.routes.draw do
  resources :favorites
  resources :messages
  resources :boards
  resources :passwords, controller: "passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create]
  resources :users, controller: "users", only: [:create, :profile] do
    resource :password,
      controller: "clearance/passwords",
      only: [:create, :edit, :update]
  end

  get "/sign_in" => "clearance/sessions#new", as: "sign_in"
  delete "/sign_out" => "sessions#destroy", as: "sign_out"
  get "/sign_up" => "clearance/users#new", as: "sign_up"
  get "/landing" => "sessions#landing", as: "landing"
  get "/profile" => "users#profile", as: "profile"


  get 'user/login'
  get 'user/signup'
  get 'user/forgot_password'
  get 'user/new_password'

  resources :boards do
    resources :messages do
      put :toggle, on: :member
      put :toggle_fav, on: :member
    end
    resources :favorites do
      put :toggle, on: :member
    end
  end
  resources :links do
    resources :tools do
      put :toggle, on: :member
    end
  end
  resources :notes do
    resources :notes_lists do
      put :toggle, on: :member
    end
  end
  resources :todo_app_lists do
    resources :tasks do
      put :toggle, on: :member
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "sessions#landing"


end
