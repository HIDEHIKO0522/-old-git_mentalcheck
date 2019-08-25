class RemoveQ1FromCheck < ActiveRecord::Migration[5.2]
  def change
    remove_column :checks, :q1, :text
  end
end
