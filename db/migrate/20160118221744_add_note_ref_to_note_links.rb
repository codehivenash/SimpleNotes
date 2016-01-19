class AddNoteRefToNoteLinks < ActiveRecord::Migration
  def change
    add_reference :note_links, :note, index: true, foreign_key: true
  end
end
