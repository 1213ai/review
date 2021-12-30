class BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all
  end
  
  def show
    @books = Book.find(params[:id])
  end
  
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @books.save
      redirect_to book_path(@book)
    else
      @books = Book.all
      render 'index'
    end
  end
  
  def edit
  end
  
  def destroy
  end
  
end
