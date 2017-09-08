class CreateVehicleChassisTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicle_chassis_types do |t|
      t.string :koodintunnus
      t.string :pitkaselite_fi
      t.string :pitkaselite_sv
      t.string :pitkaselite_en

      t.timestamps
    end
  end
end
