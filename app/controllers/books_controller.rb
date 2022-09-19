class BooksController < ApplicationController
before_action :find_book, only: [:show, :edit, :update, :destroy] 
  def index
    @book = Book.all
  end

  def create
    @book = Book.create(books_params)
    if @book.save
      redirect_to books_index_path
    end
  else
    redirect_to books_create_path
  end

  def new
  end

  def show
  end

  def edit
  end

  def update
    @book.update(books_params)
    redirect_to books_index_path
  end

  def destroy
    redirect_to books_index_path
  end

  private

  def find_book
    @book = Book.find(params[:id])
  end

  def books_params
    @book.params.require(:book).permit(:name, :author_name)
  end
end
