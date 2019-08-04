class ChecksController < ApplicationController

  def index
  end  

  def new
    @question1 = Question.find(question.pluck(:category == 1).shuffle[0])
    @question2 = Question.find(question.pluck(:category == 2).shuffle[0])
    @question3 = Question.find(question.pluck(:category == 3).shuffle[0])
    @question4 = Question.find(question.pluck(:category == 4).shuffle[0])
    @question5 = Question.find(question.pluck(:category == 5).shuffle[0])
  end  
end
