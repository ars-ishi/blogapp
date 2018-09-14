class FavoriteController < ApplicationController
  def create
    if user_signed_in?
      @user_id = current_user.id
      @article_id = Article.find(params[:id]).id
      @favorite = Favorite.new(article_id: @user_id, user_id: @user_id)

      if @favorite.save
        reditect_to article_path(@article_id)
      else
        reditect_to root_url
      end
    end

  end

  def destroy
    if user_signed_in?
      @favorite = Favorite.find(params[:id])
      @article_id = Article.find(params[:id]).id
      if @favorite.destory
        reditect_to article_path(@article_id)
      else
        reditect_to root_url
      end
    end
  end

end
