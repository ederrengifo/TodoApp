class AddThreeColumnsToNotesList < ActiveRecord::Migration[5.0]
  def change
    add_column :notes_lists, :txtTitle, :string
    add_column :notes_lists, :txt, :text
    add_column :notes_lists, :embedTitle, :string
    add_column :notes_lists, :embed, :text
  end
end
