class BooksController < ApplicationController

  before_action :authorize, only: [:new, :create, :edit, :update, :destroy]
  before_action :my_book, only: [:edit, :update, :destroy]

  def index
     @books = Book.page(params[:page]).per(5)
  end

  def show
     @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def edit
    @book = Book.find(params[:id])
  end

  def create
    @book = Book.new(book_params)
    @book.user = @current_user

    if @book.save
    redirect_to @book
  else
    render 'new'
    end

  end

  def update
    @book = Book.find(params[:id])

    if @book.update(book_params)
      redirect_to @book
    else
      render 'edit'
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy!

    redirect_to books_path
  end

  private
    def book_params
      params.require(:book).permit(:title, :author, :description, :url, :user_id)
    end

end
