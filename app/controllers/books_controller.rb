class BooksController < ApplicationController

  def top
    @book = Book.top(book)
  end

  def index
    @book = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def create
    book = Book.new
    book.save
    redirect_to books_path(book.id)
  end

  def new
    @book = Book.new(book_params)
  end

  def edit
     @book = Book.find(params[:id])
  end

  def uodate
    @book = Book.find(params[:id])
    blog.update(book_params)
    redirect_to bookl_path(book.id)
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end

