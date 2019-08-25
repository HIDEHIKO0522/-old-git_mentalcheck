class AddQ1ToChecks < ActiveRecord::Migration[5.2]
  def change
    add_column :checks, :q1, :text
  end
end
