class AddJoinTableNoteText < ActiveRecord::Migration
  def change
    create_join_table :notes, :texts do |t|
      # t.index [:note_id, :text_id]
      # t.index [:text_id, :note_id]
    end
  end
end
