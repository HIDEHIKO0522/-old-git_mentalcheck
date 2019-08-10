class ChecksController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    
  end  

  def new
    @question1 = Question.find(question.pluck(:category == 1).shuffle[1])
    @question2 = Question.find(question.pluck(:category == 2).shuffle[1])
    @question3 = Question.find(question.pluck(:category == 3).shuffle[1])
    @question4 = Question.find(question.pluck(:category == 4).shuffle[1])
    @question5 = Question.find(question.pluck(:category == 5).shuffle[1])
  end  

  def create
   Check.create(pre_score: check_params[:pre_score],
                chk_score: check_parans[:chk_score],
                chk_score1: check_params[:chk_score1],
                chk_score2: check_params[:chk_score2],
                chk_score3: check_params[:chk_score3],
                chk_score4: check_params[:chk_score4],
                chk_score5: check_params[:chk_score5],
                user_id: current_user.id)
  end

  def show
    @check = Check.find(params[:id])
    
  end 

  private
  def check_params
    params.permit(:pre_score, :chk_score, :chk_score1, :chk_score2, :chk_score3, :chk_score4, :chk_score5)
  end  
 
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end 
  
end
