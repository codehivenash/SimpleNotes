class Video < ActiveRecord::Base
	mount_uploader :vid, VidUploader

	has_many :NoteVideos
	has_many :notes, :through => :NoteVideos

end
