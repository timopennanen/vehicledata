class CreateVehicleUses < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicle_uses do |t|
      t.integer :ajoneuvonkaytto
      t.string :lyhytselite_fi
      t.string :pitkaselite_fi
      t.string :lyhytselite_sv
      t.string :pitkaselite_sv
      t.string :lyhytselite_en
      t.string :pitkaselite_en
      t.timestamps
    end
  end
end
