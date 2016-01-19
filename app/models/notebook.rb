class Notebook < ActiveRecord::Base
	has_many :UserNotebooks
  	has_many :users, :through => :UserNotebooks
  	has_many :notes
end
