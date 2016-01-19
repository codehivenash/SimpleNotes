class Note < ActiveRecord::Base
	belongs_to :notebooks

	has_many :NoteLinks
	has_many :links, :through => :NoteLinks

	has_many :NoteTexts
	has_many :texts, :through => :NoteTexts
end
