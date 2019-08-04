class Check < ApplicationRecord
  
  belongs_to :user
  
  def full_question?
    chk_score1?  && chk_score2? && chk_score3? && chk_score4? && chk_score5?
  end

  def chk_score
    @chk_score = chk_score1 + chk_score2 + chk_score3 + chk_score4 + chk_score5  
  end
end
