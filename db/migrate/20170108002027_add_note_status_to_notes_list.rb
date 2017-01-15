class AddNoteStatusToNotesList < ActiveRecord::Migration[5.0]
  def change
    add_column :notes_lists, :noteStatus, :string
  end
end
