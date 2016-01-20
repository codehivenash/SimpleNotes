class NoteImage < ActiveRecord::Base
  belongs_to :note
  belongs_to :image
end
