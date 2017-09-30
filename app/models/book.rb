class Book < ApplicationRecord

	validates_presence_of :title
	validates_presence_of :description
	validates_presence_of :author

	#Scope
	scope :all_books, ->  { all }
	scope :new_book, -> { self.new}
end
