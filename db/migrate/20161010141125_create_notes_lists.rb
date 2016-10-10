class CreateNotesLists < ActiveRecord::Migration[5.0]
  def change
    create_table :notes_lists do |t|
      t.string :codeTitle
      t.text :code

      t.timestamps
    end
  end
end
