class StaticPagesController < ApplicationController
  def home
    @authors = Author.all 
    @books = Book.all
  end

  def help
  end

  def about
  end
end
