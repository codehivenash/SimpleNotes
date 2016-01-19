class Link < ActiveRecord::Base
	has_many :NoteLinks
	has_many :notes, :through => :NoteLinks
end
