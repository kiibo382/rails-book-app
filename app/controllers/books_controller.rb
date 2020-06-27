class BooksController < ApplicationController

  def show 
    @book = Book.find(params[:id])
    @like = Like.new
  end
end
