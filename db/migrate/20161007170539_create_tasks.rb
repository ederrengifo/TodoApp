class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.integer :todo_app_list_id
      t.string :content
      t.boolean :completed

      t.timestamps
    end
  end
end
