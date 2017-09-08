class AddIndexToTable < ActiveRecord::Migration[5.1]
  def change
    add_index :vehicles, :ensirekisterointipvm
    add_index :vehicles, :kunta
  end
end
