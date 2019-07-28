class CreateChecks < ActiveRecord::Migration[5.2]
  def change
    create_table :checks do |t|
      t.integer   :user_id
      t.integer   :pre_score
      t.integer   :chk_score
      t.integer   :dif_score
      t.integer   :answer_id
      t.timestamps
    end
  end
end
