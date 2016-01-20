class Image < ActiveRecord::Base
	mount_uploader :img, ImgUploader
end
