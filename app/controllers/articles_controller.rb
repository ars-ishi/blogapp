class ArticlesController < ApplicationController

  before_action :move_to_index ,except: [:index, :show]
  before_action :set_article, only: [:show, :destroy, :edit, :update]

  def index
    @articles = Article.includes(:users).order("created_at DESC")
    @latest_articles = Article.includes(:users).order("created_at DESC").limit(4)
  end

  def new
    @article = Article.new
  end

  def create
    Article.create(article_params)
    redirect_to action: :index
  end

  def show
  end

  def destroy
    @article.destroy if @article.user_id.to_i == current_user.id.to_i
    redirect_to action: :index
  end

  def edit
  end

  def update
    @article.update(article_params) if @article.user_id.to_i == current_user.id.to_i
    redirect_to action: :show
  end

  private
  def article_params
    params.require(:article).permit(:title, :image, :text).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  def set_article
    @article = Article.find(params[:id])
  end

end
