class AddBoardIdToFavorites < ActiveRecord::Migration[5.0]
  def change
    add_column :favorites, :board_id, :integer
  end
end
