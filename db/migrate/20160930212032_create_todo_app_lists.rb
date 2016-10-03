class CreateTodoAppLists < ActiveRecord::Migration[5.0]
  def change
    create_table :todo_app_lists do |t|
      t.string :title

      t.timestamps
    end
  end
end
