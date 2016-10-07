Rails.application.routes.draw do
  resources :todo_app_lists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "todo_app_lists#index"
end
