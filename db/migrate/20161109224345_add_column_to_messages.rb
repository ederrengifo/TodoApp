class AddColumnToMessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :favorite, :boolean, default:false
  end
end
