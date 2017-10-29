class SearchController < ApplicationController
  def filter
    books = Book.ransack(params[:q]).result.includes(:authors, :genres)
    articles = Article.ransack(params[:q]).result.includes(:authors, :genres)
    @publications = books.to_a + articles.to_a
  end
end
