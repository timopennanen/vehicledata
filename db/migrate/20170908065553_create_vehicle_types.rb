class CreateVehicleTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicle_types do |t|
      t.string :ajoneuvoluokka
      t.string :lyhytselite
      t.string :pitkaselite
      t.string :lyhytselite_sv
      t.string :pitkaselite_sv
      t.string :lyhytselite_en
      t.string :pitkaselite_en

      t.timestamps
    end
  end
end
