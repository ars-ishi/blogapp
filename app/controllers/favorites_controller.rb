class FavoritesController < ApplicationController
  def create
    article = Article.find(params[:article_id])
    if Favorite.create(user_id: current_user.id.to_i, article_id: article.id)
      redirect_to article_path(article.id)
    else
      redirect_to root_url
    end

  end

  def destroy
      article = Article.find(params[:article_id])
      if favorite = Favorite.find_by(user_id: current_user.id.to_i, article_id: article.id)
        favorite.delete
        redirect_to article_path(article.id)
      else
        redirect_to root_url
      end
  end

end
