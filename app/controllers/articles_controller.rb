class ArticlesController < ApplicationController

  def new
  end

  def create

  @article = Article.find(article_params)

  @article.save
  redirect_to @article

  end

  def show
    @article = Article.save(params[:id])
  end

  private

    def article_params
      params.require(:article).permit(:title, :text)
    end

end

