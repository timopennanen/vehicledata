class ChangeColumnType < ActiveRecord::Migration[5.1]
  def change
    change_column(:vehicles, :tyyppihyvaksyntanro, :string)
  end
end
