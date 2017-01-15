class AddLinkUrlToTools < ActiveRecord::Migration[5.0]
  def change
    add_column :tools, :link_url, :string
  end
end
