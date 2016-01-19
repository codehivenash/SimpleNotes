class NoteLink < ActiveRecord::Base
	belongs_to :note
	belongs_to :link
end
