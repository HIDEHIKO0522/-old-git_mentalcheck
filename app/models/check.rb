class Check < ApplicationRecord
  
  has_many :questions
  belongs_to :user
  
  
  def full_question?
    pre_score && chk_score1?  && chk_score2? && chk_score3? && chk_score4? && chk_score5?
  end

end