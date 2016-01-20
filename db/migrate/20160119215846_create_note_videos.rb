class CreateNoteVideos < ActiveRecord::Migration
  def change
    create_table :note_videos do |t|
      t.belongs_to :note, index: true, foreign_key: true
      t.belongs_to :video, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
