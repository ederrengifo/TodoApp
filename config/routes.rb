Rails.application.routes.draw do
  resources :messages
  resources :boards
  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create]
  resources :users, controller: "users", only: [:create] do
    resource :password,
      controller: "clearance/passwords",
      only: [:create, :edit, :update]
  end

  get "/sign_in" => "clearance/sessions#new", as: "sign_in"
  delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"
  get "/sign_up" => "clearance/users#new", as: "sign_up"

  get 'user/login'
  get 'user/signup'
  get 'user/forgot_password'
  get 'user/new_password'

  resources :boards do
    resources :messages do
      put :toggle, on: :member
    end
  end
  resources :tools
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
  root to: "todo_app_lists#index"

end
