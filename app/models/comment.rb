class Comment < ApplicationRecord

  belongs_to :check
  belongs_to :user
  
end

