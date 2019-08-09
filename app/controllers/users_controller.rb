class UsersController < ApplicationController

  has_many :checks
  
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    
  end
end
