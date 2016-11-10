class AddColumnToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :priority, :boolean, default: false
  end
end
