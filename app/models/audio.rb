class Audio < ActiveRecord::Base
	mount_uploader :aud, AudUploader

	has_many :NoteAudios
	has_many :notes, :through => :NoteAudios
end
