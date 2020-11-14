class BooksController < ApplicationController

  def top
  end

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def create
    book = Book.new(books_params)
    book.save

    # if @book.save
    #   redirect_to :action => "index"
    # else
    #   render :action => "new"
    # end

    redirect_to books_path(book.id)
  end

  # def new
  #   @book = Book.new(book_params)
  # end

  def edit
     @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params)
    blog.update(book_params)
    redirect_to books_path
  end

  def destroy
    @book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

  private
  def books_params
    # require(:book).
    params.permit(:title, :body)
  end

end

