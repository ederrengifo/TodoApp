class AddTaskToTodoAppList < ActiveRecord::Migration[5.0]
  def change
    add_column :todo_app_lists, :task, :string
  end
end
