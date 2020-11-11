class BooksController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def edit
  end
end






 def show
    @book = Book.find(params[:id])

  def new
    @book = Book.new(book_params)
  end

  def create
    book = Book.new
    book.save
    redirect_to books_path(book.id)

  def index
    @book = Book.all
  end

  def edit
    @book = Book.find(params[:id])
  end

  def uodate
    @book = Book.find(params[:id])
    blog.update(book_params)
    redirect_to bookl_path(book.id)


  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

get 'top' => 'top'
  get 'show' => 'books#show'
  post 'new' => 'books#new'
