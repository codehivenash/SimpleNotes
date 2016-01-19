class CreateNoteLinks < ActiveRecord::Migration
  def change
    create_table :note_links do |t|

      t.timestamps null: false
    end
  end
end
