class Like < ApplicationRecord

  belongs_to :check, counter_cache: :likes_count
  belongs_to :user
end
