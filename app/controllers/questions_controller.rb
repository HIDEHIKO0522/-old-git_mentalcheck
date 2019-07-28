class QuestionsController < ApplicationController

  def create
    Question.create(text: question_params[:text], category: question_params[:category])
  end
 
   private
  def question_params
    params.permit(:text, :category)
  end  
  
end
