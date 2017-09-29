class Administrative::BooksController < AdministrativeController

  def index
  	@books = Book.all
  end

  def new
  	@book = Book.new
  end

  def create
  	@book = Book.new(params_book)
    if @book.save
      redirect_to administrative_books_path, notice: "O livro #{@book.title} foi cadastrado com sucesso"
    else
      render :new
    end
  end

  def edit
  	
  end

  def update
  	
  end

  private

  def params_book
    params.require(:book).permit(:title, :description, :author)
  end
end
