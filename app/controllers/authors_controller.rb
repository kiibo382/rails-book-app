class AuthorsController < ApplicationController

  def index
    @authors = Author.paginate(page: params[:page]).search(params[:search]) 
  end

  def show
    @author = Author.find(params[:id])
    @books = @author.books.paginate(page: params[:page], per_page: 20)
    followers = Follow.where(author_id: params[:id])
  end
end