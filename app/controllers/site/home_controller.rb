class Site::HomeController < SiteController
  layout "site"

  def index
  	@books = Book.all_books
  end
end
