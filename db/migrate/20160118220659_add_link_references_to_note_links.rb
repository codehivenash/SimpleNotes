class AddLinkReferencesToNoteLinks < ActiveRecord::Migration
  def change
    add_reference :note_links, :link, index: true, foreign_key: true
  end
end
