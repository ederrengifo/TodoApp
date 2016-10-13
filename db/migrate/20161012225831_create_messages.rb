class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :content
      t.string :author
      t.integer :user_id
      t.integer :message_id

      t.timestamps
    end
  end
end
