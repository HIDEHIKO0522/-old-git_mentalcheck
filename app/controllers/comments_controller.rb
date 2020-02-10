class CommentsController < ApplicationController

  def create
    @comment = Comment.create(text: comment_params[:text], check_id: comment_params[:check_id], user_id: current_user.id)
     respond_to do |format|
       format.html { redirect_to check_path(params[:check_id])  }
       format.json
     end
  end
 
 
   private
 def comment_params
   params.permit(:text, :check_id)
 end


end
