class BooksController < ApplicationController
  def index
    @books = Book.includes(:authors, :genres).all
  end
end
