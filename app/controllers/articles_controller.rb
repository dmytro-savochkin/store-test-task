class ArticlesController < ApplicationController
  def index
    @articles = Article.includes(:authors, :genres).all
  end
end
