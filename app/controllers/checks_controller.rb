class ChecksController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    
  end  

  def new
    
    @question1 = Question.where( category:1).order("RAND()").limit(1).map{|v| v.text}
    @question2 = Question.where( category:2).order("RAND()").limit(1).map{|v| v.text}
    @question3 = Question.where( category:3).order("RAND()").limit(1).map{|v| v.text}
    @question4 = Question.where( category:4).order("RAND()").limit(1).map{|v| v.text}
    @question5 = Question.where( category:5).order("RAND()").limit(1).map{|v| v.text}
    
  @check = Check.new
  
  end  

  def create
    @check = Check.create(pre_score: check_params[:pre_score], 
                       chk_score1: check_params[:chk_score1],
                       chk_score2: check_params[:chk_score2],
                       chk_score3: check_params[:chk_score3],
                       chk_score4: check_params[:chk_score4],
                       chk_score5: check_params[:chk_score5],
                       user_id: current_user.id )
    # @check_sum = Check.create(check_sum)                   
  end

  def show
    @check = Check.find(params[:id])
    @check_sum = @check.chk_score1 + @check.chk_score2 + @check.chk_score3 + @check.chk_score4 + @check.chk_score5
    @dif_chk = @check_sum - @check.pre_score
  end 

  private
  def check_params
    params.permit(:pre_score, :chk_score1, :chk_score2, :chk_score3, :chk_score4, :chk_score5)
  end  
  
  
  # def full_score?
    
    # pre_score? && chk_score1? && chk_score2? && chk_score3? && chk_score4? && chk_score5?
  # end
  # def check_sum(check)

    # @pre_score = pre_score
    # @chk_score1 = chk_score1
    # @chk_score2 = chk_score2
    # @chk_score3 = chk_score3
    # @chk_score4 = chk_score4
    # @chk_score5 = chk_score5
    
    # @sum = @pre_score + @chk_score1 + @chk_score2 + @chk_score3 + @chk_score4 + @chk_score5
  # @check_sum = @sum
   
  # end  
 
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end 
  
end
