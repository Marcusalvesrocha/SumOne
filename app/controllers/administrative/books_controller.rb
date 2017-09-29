class Administrative::BooksController < AdministrativeController
  before_action :set_book, only: [:edit, :update]
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
  	
    if @book.update(params_book)
      redirect_to administrative_books_path, notice: "O livro #{@book.title} foi editado com sucesso"
    else
      render :edit
    end
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def params_book
    params.require(:book).permit(:title, :description, :author)
  end
end
