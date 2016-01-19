class CreateNoteTexts < ActiveRecord::Migration
  def change
    create_table :note_texts do |t|

      t.timestamps null: false
    end
  end
end
