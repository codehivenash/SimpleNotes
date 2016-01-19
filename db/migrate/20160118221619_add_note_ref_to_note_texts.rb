class AddNoteRefToNoteTexts < ActiveRecord::Migration
  def change
    add_reference :note_texts, :note, index: true, foreign_key: true
  end
end
