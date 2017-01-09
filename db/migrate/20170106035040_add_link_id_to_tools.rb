class AddLinkIdToTools < ActiveRecord::Migration[5.0]
  def change
    add_column :tools, :link_id, :integer
  end
end
