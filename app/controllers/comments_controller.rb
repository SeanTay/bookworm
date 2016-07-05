class CommentsController < ApplicationController

  def index
    @comment = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create!(comment.params)
    redirect_to book_path
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment.params)
    redirect_to book_path
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to book_path
  end

  private
  comments.require(:comment).permit(:subject, :body)

end
