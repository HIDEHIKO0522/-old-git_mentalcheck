class ChecksController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    
  end  

  def new
    # Model.find(Model.pluck(:id).shuffle[0..4])
    
    @question1 = Question.where( category:1).order("RAND()").limit(1).map{|v| v.text}
    @question2 = Question.where( category:2).order("RAND()").limit(1).map{|v| v.text}
    @question3 = Question.where( category:3).order("RAND()").limit(1).map{|v| v.text}
    @question4 = Question.where( category:4).order("RAND()").limit(1).map{|v| v.text}
    @question5 = Question.where( category:5).order("RAND()").limit(1).map{|v| v.text}
    
    @check = Check.new
  end  

  def create
    Check.create(check_params)
  end

  def show
    @check = Check.find(params[:id])
    
  end 

  private
  def check_params
    params.permit(:pre_score, :chk_score1, :chk_score2, :chk_score3, :chk_score4, :chk_score5, :chk_score, user_id: current_user.id)
  end  
 
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end 
  
end
