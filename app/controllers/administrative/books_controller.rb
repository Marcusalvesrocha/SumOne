class Administrative::BooksController < ApplicationController
  before_action :authenticate_admin!

  layout "Administrative"

  def index
  	@books = Book.all
  end
end
