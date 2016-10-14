class CreateFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
      t.string :fav_author
      t.string :fav_content
      t.integer :user_id
      t.integer :message_id

      t.timestamps
    end
  end
end
