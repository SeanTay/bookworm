class BooksController < ApplicationController

  def index
    @books = Book.all
    @reads = current_user.reads
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.create!(book_params)
    redirect_to (book_path(@book))
  end

  def show
    @book = Book.find(params[:id])
    @comments = @book.comments
    @comment = Comment.new
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to (book_path(@book))
  end

  def destroy
    @book = Book.find(params[:id])
  end

  def read
    type = params[:type]
    @book = Book.find(params[:id])

    if type == "unread" #If user selects read
      current_user.reads.create(book:@book)
      redirect_to :back, notice: "You're currently reading #{@book.title}"

    elsif type == "read"#If user select unread
      current_user.reads.where(book:@book).destroy_all
      redirect_to :back, notice: "You finished reading #{@book.title}"

    else
      redirect_to :back, notice: "Nothing happened"
    end
  end

  private
  def book_params
    params.require(:book).permit(:title, :author, :photo_url, :has_read)
  end
end
