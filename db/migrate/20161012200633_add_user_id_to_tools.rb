class AddUserIdToTools < ActiveRecord::Migration[5.0]
  def change
    add_column :tools, :user_id, :integer
  end
end
