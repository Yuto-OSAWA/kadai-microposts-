class FavoritesController < ApplicationController
 
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.like_do(micropost)
    flash[:success] = '投稿をお気に入りしました'
    user = current_user
    redirect_to user
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unlike(micropost)
    flash[:success] = 'お気に入りを解除しました'
    user = current_user
    redirect_to user
  end
end
