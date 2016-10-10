class AddIntegerToNotesList < ActiveRecord::Migration[5.0]
  def change
    add_column :notes_lists, :note_id, :integer
  end
end
