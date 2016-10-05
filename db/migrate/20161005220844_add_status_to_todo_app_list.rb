class AddStatusToTodoAppList < ActiveRecord::Migration[5.0]
  def change
    add_column :todo_app_lists, :status, :string
  end
end
