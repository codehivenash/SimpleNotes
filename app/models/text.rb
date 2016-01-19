class Text < ActiveRecord::Base
	has_many :NoteTexts
	has_many :notes, :through => :NoteTexts
end
