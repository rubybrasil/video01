class BooksController < ApplicationController
  def index
    @books = Book.search(params[:book_title]).all
  end
end
