class QuestionsController < ApplicationController

  def new
    @question = Question.new
  end  


  def create
    Question.create(text: question_params[:text], category: question_params[:category])
    render 'index' 
  end
 
   private
  def question_params
    params.permit(:text, :category)
  end  
  
end
