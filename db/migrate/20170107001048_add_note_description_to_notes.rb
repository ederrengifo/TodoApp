class AddNoteDescriptionToNotes < ActiveRecord::Migration[5.0]
  def change
    add_column :notes, :noteDescription, :string
  end
end
