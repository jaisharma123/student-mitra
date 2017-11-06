class ArticlesController < ApplicationController

  before_action :set_article, only: [:show,:download_article_pdf]

  def index
     @articles = Article.all
  end

  def download_article_pdf

  end


  def show

  end

  private
    def set_article
      @article = Article.find(params[:id])
    end
end
