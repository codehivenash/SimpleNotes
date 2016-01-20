class NoteAudio < ActiveRecord::Base
  belongs_to :note
  belongs_to :audio
end
