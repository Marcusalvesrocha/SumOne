class Book < ApplicationRecord

	#paperclip
	has_attached_file :picture, styles: { medium: "150x250#", thumb: "80x100#" }, default_url: "/public/pictures/empty.jpg"
	validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

	validates_presence_of :title
	validates_presence_of :description
	validates_presence_of :author

	#Scope
	scope :all_books, ->  { all }

  scope :search, -> (q) { 
    where("lower(description) LIKE ?", "%#{q.downcase}%").or(where("lower(title) LIKE ?", "%#{q.downcase}%")).or(where("lower(author) LIKE ?", "%#{q.downcase}%"))
  }


end
