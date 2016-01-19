class AddJoinTableNoteLink < ActiveRecord::Migration
  def change
    create_join_table :notes, :links do |t|
      # t.index [:note_id, :link_id]
      # t.index [:link_id, :note_id]
    end
  end
end
