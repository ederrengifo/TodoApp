class AddUserIdToTodoAppLists < ActiveRecord::Migration[5.0]
  def change
    add_column :todo_app_lists, :user_id, :integer
  end
end
