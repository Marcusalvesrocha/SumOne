class Book < ApplicationRecord

	#Scope
	scope :order_by, -> (ordination = "title") { order(ordination) }
end
