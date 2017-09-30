class Book < ApplicationRecord

	validates_presence_of :title
	validates_presence_of :description
	validates_presence_of :author

	#Scope
	scope :order_by, -> (ordination = "title") { order(ordination) }
end
