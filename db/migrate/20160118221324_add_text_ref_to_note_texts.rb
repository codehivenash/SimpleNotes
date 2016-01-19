class AddTextRefToNoteTexts < ActiveRecord::Migration
  def change
    add_reference :note_texts, :text, index: true, foreign_key: true
  end
end
