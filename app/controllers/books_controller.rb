class BooksController < ApplicationController
  def index
    @books = Book.includes(:authors, :genres).all
  end

  def prime
    @books = Book.where(prime_name: true).includes(:authors, :genres).all
    render :index
  end
end
