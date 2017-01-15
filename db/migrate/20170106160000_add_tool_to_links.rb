class AddToolToLinks < ActiveRecord::Migration[5.0]
  def change
    add_column :links, :tool, :string
  end
end
