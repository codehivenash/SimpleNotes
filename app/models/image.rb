class Image < ActiveRecord::Base
	mount_uploader :img, ImgUploader

	has_many :NoteImages
	has_many :notes, :through => :NoteImages
end
