class CreateVehicles < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicles do |t|
      t.string :ajoneuvoluokka
      t.timestamp :ensirekisterointipvm
      t.string :ajoneuvoryhma
      t.integer :ajoneuvonkaytto
      t.string :variantti
      t.string :versio
      t.timestamp :kayttoonottopvm
      t.string :vari
      t.integer :ovienlukumaara
      t.string :korityyppi
      t.integer :ohjaamotyyppi
      t.integer :istumapaikkojenlkm
      t.integer :omamassa
      t.integer :teknsuursallkokmassa
      t.integer :tieliiksuursallkokmassa
      t.integer :ajonkokpituus
      t.integer :ajonleveys
      t.integer :ajonkorkeus
      t.integer :kayttovoima
      t.integer :iskutilavuus
      t.integer :suurinnettoteho
      t.integer :sylintereidenlkm
      t.boolean :ahdin
      t.boolean :sahkohybridi
      t.string :merkkiselvakielinen
      t.string :mallimerkinta
      t.string :vaihteisto
      t.integer :vaihteidenlkm
      t.string :kaupallinennimi
      t.integer :voimanvaljatehostamistapa
      t.string :tyyppihyvaksyntanro
      t.integer :yksittaiskayttovoima
      t.integer :kunta
      t.integer :co2
      t.bigint :mittarilukema
      t.integer :alue
      t.string :valmistenumero2
      t.bigint :jarnro

      t.timestamps
    end
  end
end
__END__

