json.extract! todo_app_list, :id, :title, :created_at, :updated_at, :task,
json.url todo_app_list_url(todo_app_list, format: :json)
