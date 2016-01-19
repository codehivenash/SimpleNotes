class Video < ActiveRecord::Base
	has_many :NoteVideos
	has_many :notes, :through => :NoteVideos
end
