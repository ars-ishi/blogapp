class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @favorites = Favorite.where(user_id: @user.id)
    @counts = @favorites.length
  end
end
