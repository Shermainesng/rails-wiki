class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @new_article = Article.new
  end

  def create
    new_article = Article.new(article_params)
    if new_article.save
      redirect_to articles_path
    end
  end

  def edit
    @the_article = Article.find(params[:id])
  end

  def update
    the_article = Article.find(params[:id])
    the_article.update(article_params)
    redirect_to article_path(the_article)
  end

  def destroy
    the_article = Article.find(params[:id])
    if the_article.destroy
      redirect_to articles_path
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :content)
  end
end
