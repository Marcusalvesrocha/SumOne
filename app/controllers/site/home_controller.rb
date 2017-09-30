class Site::HomeController < ApplicationController
  layout "site"

  def index
  	@books = Book.all_books
  end
end
