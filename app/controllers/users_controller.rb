class UsersController < ApplicationController
  
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @checks = user.checks.order("created_at DESC").page(params[:page]).per(4)
    # @likes = Like.where(check_id: params[:check_id]) # like拡張機能
  end
end

  
