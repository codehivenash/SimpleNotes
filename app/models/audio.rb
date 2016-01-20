class Audio < ActiveRecord::Base
	has_many :NoteAudios
	has_many :notes, :through => :NoteAudios
end
