class Check < ApplicationRecord
 
  # class << self
    # def search(query)
      # rel = order("user_id")
        # if query.present?
          # rel = rel.where("name LIKE (?) ", "%#{query}%")
        # end
        # rel
    # end    
  # end
  
  has_many :questions
  belongs_to :user

  validates :pre_score, presence: true,
    numericality: {
      only_integer: true,
      greater_than_or_equal_to: 20,
      less_than_or_equal_to: 100, 
      allow_blank: true
    }
  
  validates :chk_score1, :chk_score2, :chk_score3, :chk_score4, :chk_score5, presence: true,
    numericality: {
      only_integer: true,
      greater_than_or_equal_to: 4,
      less_than_or_equal_to: 20, 
      allow_blank: true
    } 
  
  before_save do

    self.chk_score = chk_score1 + chk_score2 + chk_score3 + chk_score4 + chk_score5
    self.dif_score = (chk_score1 + chk_score2 + chk_score3 + chk_score4 + chk_score5 - pre_score)
  end
  
  

end