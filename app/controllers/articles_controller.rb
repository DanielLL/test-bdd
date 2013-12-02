class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

 def create
    @article = Article.create!(article_attributes)
    flash[:notice] = "New article created."
    redirect_to articles_path
  end
  private

  def article_attributes
    params.require(:article).permit(
      :title, :content
    )
  end
end
