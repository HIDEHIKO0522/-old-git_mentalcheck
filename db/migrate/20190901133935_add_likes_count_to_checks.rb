class AddLikesCountToChecks < ActiveRecord::Migration[5.2]
  def change
    add_column :checks, :likes_count, :integer
  end
end
