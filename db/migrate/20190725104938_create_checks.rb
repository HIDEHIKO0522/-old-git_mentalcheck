class CreateChecks < ActiveRecord::Migration[5.2]
  def change
    create_table :checks do |t|
      t.integer   :user_id
      t.integer   :pre_score
      t.integer   :chk_score
      t.integer   :chk_score1
      t.integer   :chk_score2
      t.integer   :chk_score3
      t.integer   :chk_score4
      t.integer   :chk_score5
      t.integer   :dif_score
      t.timestamps
    end
  end
end
