class CreateChecks < ActiveRecord::Migration[5.2]
  def change
    create_table :checks do |t|
      t.integer   :user_id
      t.integer   :pre_num
      t.integer   :chk_num
      t.integer   :dif_num
      t.integer   :answer_id
      t.timestamps
    end
  end
end
