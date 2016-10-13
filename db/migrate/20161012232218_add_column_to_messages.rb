class AddColumnToMessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :board_id, :integer
  end
end
