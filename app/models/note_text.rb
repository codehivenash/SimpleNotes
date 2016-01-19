class NoteText < ActiveRecord::Base
	belongs_to :note
	belongs_to :text
end
