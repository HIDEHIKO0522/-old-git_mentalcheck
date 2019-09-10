class LikesController < ApplicationController
  
  def create
    @like = Like.create(user_id: current_user.id, check_id: params[:check_id])
    @likes = Like.where(check_id: params[:check_id])
    # @checks = Check.all
  end

  def destroy
    like = Like.find_by(user_id: current_user.id, check_id: params[:check_id])
    like.destroy
    @likes = Like.where(check_id: params[:check_id])
    # @checks = Check.all
  end
  
end
