class CreateNoteImages < ActiveRecord::Migration
  def change
    create_table :note_images do |t|
      t.belongs_to :note, index: true, foreign_key: true
      t.belongs_to :image, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
