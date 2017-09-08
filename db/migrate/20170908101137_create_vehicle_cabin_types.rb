class CreateVehicleCabinTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicle_cabin_types do |t|
      t.string :koodintunnus
      t.string :lyhytselite_fi
      t.string :lyhytselite_sv
      t.string :lyhytselite_en

      t.timestamps
    end
  end
end
