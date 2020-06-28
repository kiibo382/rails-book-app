class BooksController < ApplicationController

  def show 
    @book = Book.find(params[:id])
    @like = Like.new
    @comments = @book.comments
    @comment = @book.comments.build
    @comment_reply = @book.comments.build #コメントに対する返信用の変数
  end

  def destroy
    @book = Book.find(params[:id])
    @comment = @book.comments.find(params[:id])
    @comment.destroy
    # redirect_back(fallback_location: image_path(book))
  end 
end
