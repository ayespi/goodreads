class BooksController < ApplicationController
  def index
    @books =  Book.all
  end
  def show
    @book = Book.find(params[:id])
  end
  def new
    @book = Book.new
  end
  def create
    @book = Book.create(book_params)
    redirect_to book_path(@book)
  end
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end
  private
  def book_params
    params.require(:book).permit(:title, :author,:has_read)
  end

end
