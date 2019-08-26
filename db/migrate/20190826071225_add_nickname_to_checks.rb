class AddNicknameToChecks < ActiveRecord::Migration[5.2]
  def change
    add_column :checks, :nickname, :text
  end
end
