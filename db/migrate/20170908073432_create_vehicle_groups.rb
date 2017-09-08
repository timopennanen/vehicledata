class CreateVehicleGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicle_groups do |t|
      t.string :ajoneuvoryhma
      t.string :pitkaselite_fi
      t.string :pitkaselite_sv
      t.string :pitkaselite_en

      t.timestamps
    end
  end
end
