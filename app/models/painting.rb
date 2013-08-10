class Painting < ActiveRecord::Base
	belongs_to :artist
	
	validates :title, :length => { :maximum => 400 }


end
