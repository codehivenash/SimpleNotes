class CreateNoteAudios < ActiveRecord::Migration
  def change
    create_table :note_audios do |t|
      t.belongs_to :note, index: true, foreign_key: true
      t.belongs_to :audio, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
