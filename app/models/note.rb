class Note < ActiveRecord::Base
	
	belongs_to :notebooks

	has_many :NoteLinks
	has_many :links, :through => :NoteLinks

	has_many :NoteTexts
	has_many :texts, :through => :NoteTexts

	has_many :NoteVideos
	has_many :videos, :through => :NoteVideos

	has_many :NoteAudios
	has_many :audios, :through => :NoteAudios

	has_many :NoteImages
	has_many :images, :through => :NoteImages
end
