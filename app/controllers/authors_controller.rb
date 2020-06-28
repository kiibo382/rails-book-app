class AuthorsController < ApplicationController

  def index
    @authors = Author.all 
  end

  def show
    @author = Author.find(params[:id])
    @books = @author.books.paginate(page: params[:page], per_page: 20)
    followers = Follow.find_by(author_id: params[:id])
  end
end
