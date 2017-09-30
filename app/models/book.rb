class Book < ApplicationRecord

	#paperclip
	has_attached_file :picture, styles: { medium: "300x450#", thumb: "100x150#" }, default_url: "/public/pictures/empty.jpg"
	validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

	validates_presence_of :title
	validates_presence_of :description
	validates_presence_of :author

	#Scope
	scope :all_books, ->  { all }
	scope :new_book, -> { self.new}
end
