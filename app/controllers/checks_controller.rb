class ChecksController < ApplicationController

  before_action :move_to_index, except: :index
  

  def index
    @checks = Check.includes(:user).page(params[:page]).per(5).order("created_at DESC")
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
                       chk_score: check_params[:chk_score],
                       dif_score: check_params[:dif_score],
                       user_id: current_user.id )
    @check.save
  end

  def show
    @check = Check.find(params[:id])
  end 


  def edit
    @question1 = Question.where( category:1).order("RAND()").limit(1).map{|v| v.text}
    @question2 = Question.where( category:2).order("RAND()").limit(1).map{|v| v.text}
    @question3 = Question.where( category:3).order("RAND()").limit(1).map{|v| v.text}
    @question4 = Question.where( category:4).order("RAND()").limit(1).map{|v| v.text}
    @question5 = Question.where( category:5).order("RAND()").limit(1).map{|v| v.text}
    
    @check = Check.find(params[:id])
  end

  def update
    @check = Check.find(params[:id])
  end
 
  def destroy
      check = Check.find(params[:id])
    if check.user_id == current_user.id
      check.destroy
    end  
  end    
 


  
  private
  def check_params
    params.require(:check).permit(:pre_score,  :chk_score1, :chk_score2, :chk_score3, :chk_score4, :chk_score5,
                  :chk_score, :dif_score)
  end  
  
  
  # def full_score?
    
    # pre_score? && chk_score1? && chk_score2? && chk_score3? && chk_score4? && chk_score5?
  # end
 
 
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end 
  
end
