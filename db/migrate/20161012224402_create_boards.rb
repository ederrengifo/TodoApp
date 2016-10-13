class CreateBoards < ActiveRecord::Migration[5.0]
  def change
    create_table :boards do |t|
      t.string :board_title
      t.string :topic
      t.integer :messages

      t.timestamps
    end
  end
end
