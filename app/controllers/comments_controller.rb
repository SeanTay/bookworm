class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    @book = Book.find(params[:book_id])
    @comment = @book.comments.create!(comment_params)
    redirect_to book_path(@book)
  end

  def show
    @book = Book.find(params[:book_id])
    @comment = Comment.find(params[:id])
  end

  def edit
    @book = Book.find(params[:book_id])
    @comment = Comment.find(params[:id])
  end

  def update
    @book = Book.find(params[:book_id])
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to book_path
  end

  def destroy
    @book = Book.find(params[:book_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to book_path(@book)
  end

  private
  def comment_params
    params.require(:comment).permit(:subject, :body)
  end
end
