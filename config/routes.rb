Rails.application.routes.draw do
  get 'user/login'

  get 'user/signup'

  get 'user/forgot_password'

  get 'user/new_password'

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
