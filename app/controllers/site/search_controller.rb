class Site::SearchController < SiteController

	def books
		@books = Book.search(params[:q], params[:d])
	end
end
