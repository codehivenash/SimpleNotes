class Notebook < ActiveRecord::Base
	has_many :UserNotebooks, dependent: :destroy
  	has_many :users, :through => :UserNotebooks
  	has_many :notes, dependent: :destroy
end
