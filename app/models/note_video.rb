class NoteVideo < ActiveRecord::Base
  belongs_to :note
  belongs_to :video
end
