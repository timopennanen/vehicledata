require 'csv'
require "activerecord-import/base"
namespace :import do
  desc "Import vehicles from csv"
  task vehicles: :environment do
    sum = 0
    vehicles_a = []
    begin
      filename = File.join Rails.root, 'vehicles.utf8.csv'
      CSV.foreach(filename, headers: true, :col_sep => ";") do |row|
        vehicles_a << Vehicle.new(
          ajoneuvoluokka: row[0],
          ensirekisterointipvm: row[1],
          ajoneuvoryhma: row[2],
          ajoneuvonkaytto: row[3],
          variantti: row[4],
          versio: row[5],
          kayttoonottopvm: row[6],
          vari: row[7],
          ovienlukumaara: row[8],
          korityyppi: row[9],
          ohjaamotyyppi: row[10],
          istumapaikkojenlkm: row[11],
          omamassa: row[12],
          teknsuursallkokmassa: row[13],
          tieliiksuursallkokmassa: row[14],
          ajonkokpituus: row[15],
          ajonleveys: row[16],
          ajonkorkeus: row[17],
          kayttovoima: row[18],
          iskutilavuus: row[19],
          suurinnettoteho: row[20],
          sylintereidenlkm: row[21],
          ahdin: row[22],
          sahkohybridi: row[23],
          merkkiselvakielinen: row[24],
          mallimerkinta: row[25],
          vaihteisto: row[26],
          vaihteidenlkm: row[27],
          kaupallinennimi: row[28],
          voimanvaljatehostamistapa: row[29],
          tyyppihyvaksyntanro: row[30],
          yksittaiskayttovoima: row[31],
          kunta: row[32],
          co2: row[33],
          mittarilukema: row[34],
          alue: row[35],
          valmistenumero2: row[36],
          jarnro: row[37]
        )
        sum += 1
        if sum % 100000 == 0
          puts "count: #{sum}"
          puts "array length: #{vehicles_a.length}"
          puts "performing import.."
          Vehicle.import(vehicles_a, validate: false)
          puts "..done"
          vehicles_a = []
        end
      end
      if vehicles_a.length > 0
        puts "performing import.."
        puts "array length: #{vehicles_a.length}"
        Vehicle.import(vehicles_a, validate: false)
        puts "..done"
      end
    rescue CSV::MalformedCSVError
      retry
    end
  end

  task vehicle_groups: :environment do
    sum = 0
    vehicle_groups_a = []
    begin
      filename = File.join Rails.root, 'ajoneuvoryhmat.csv'
      CSV.foreach(filename, headers: true, :col_sep => ";") do |row|
        vehicle_groups_a << VehicleGroup.new(
          ajoneuvoryhma: row[0],
          pitkaselite_fi: row[1],
          pitkaselite_sv: row[2],
          pitkaselite_en: row[3]
        )
        sum += 1
        if sum % 100000 == 0
          puts "count: #{sum}"
          puts "array length: #{vehicle_groups_a.length}"
          puts "performing import.."
          VehicleGroup.import(vehicle_groups_a, validate: false)
          puts "..done"
          vehicle_groups_a = []
        end
      end
      if vehicle_groups_a.length > 0
        puts "performing import.."
        puts "array length: #{vehicle_groups_a.length}"
        VehicleGroup.import(vehicle_groups_a, validate: false)
        puts "..done"
      end
    rescue CSV::MalformedCSVError
      retry
    end
  end

  task vehicle_types: :environment do
    sum = 0
    vehicle_types_a = []
    begin
      filename = File.join Rails.root, 'ajoneuvoluokat.csv'
      CSV.foreach(filename, headers: true, :col_sep => ";") do |row|
        vehicle_types_a << VehicleType.new(
          ajoneuvoluokka: row[0],
          lyhytselite: row[1],
          pitkaselite: row[2],
          lyhytselite_sv: row[3],
          pitkaselite_sv: row[4],
          lyhytselite_en: row[5],
          pitkaselite_en: row[6]
        )
        sum += 1
        if sum % 100000 == 0
          puts "count: #{sum}"
          puts "array length: #{vehicle_types_a.length}"
          puts "performing import.."
          VehicleType.import(vehicle_types_a, validate: false)
          puts "..done"
          vehicle_types_a = []
        end
      end
      if vehicle_types_a.length > 0
        puts "performing import.."
        puts "array length: #{vehicle_types_a.length}"
        VehicleType.import(vehicle_types_a, validate: false)
        puts "..done"
      end
    rescue CSV::MalformedCSVError
      retry
    end
  end

  task vehicle_uses: :environment do
    sum = 0
    vehicle_uses_a = []
    begin
      filename = File.join Rails.root, 'ajoneuvonkaytto.csv'
      CSV.foreach(filename, headers: true, :col_sep => ";") do |row|
        vehicle_uses_a << VehicleUse.new(
          ajoneuvonkaytto: row[0],
          lyhytselite_fi: row[1],
          pitkaselite_fi: row[2],
          lyhytselite_sv: row[3],
          pitkaselite_sv: row[4],
          lyhytselite_en: row[5],
          pitkaselite_en: row[6]
        )
        sum += 1
        if sum % 100000 == 0
          puts "count: #{sum}"
          puts "array length: #{vehicle_uses_a.length}"
          puts "performing import.."
          VehicleUse.import(vehicle_uses_a, validate: false)
          puts "..done"
          vehicle_uses_a = []
        end
      end
      if vehicle_uses_a.length > 0
        puts "performing import.."
        puts "array length: #{vehicle_uses_a.length}"
        VehicleUse.import(vehicle_uses_a, validate: false)
        puts "..done"
      end
    rescue CSV::MalformedCSVError
      retry
    end
  end

  task colors: :environment do
    sum = 0
    colors_a = []
    begin
      filename = File.join Rails.root, 'varit.csv'
      CSV.foreach(filename, headers: true, :col_sep => ";") do |row|
        colors_a << Color.new(
          koodintunnus: row[0],
          pitkaselite_fi: row[1],
          pitkaselite_sv: row[2],
          pitkaselite_en: row[3]
        )
        sum += 1
        if sum % 100000 == 0
          puts "count: #{sum}"
          puts "array length: #{colors_a.length}"
          puts "performing import.."
          Color.import(colors_a, validate: false)
          puts "..done"
          colors_a = []
        end
      end
      if colors_a.length > 0
        puts "performing import.."
        puts "array length: #{colors_a.length}"
        Color.import(colors_a, validate: false)
        puts "..done"
      end
    rescue CSV::MalformedCSVError
      retry
    end
  end

  task vehicle_cabin_types: :environment do
    sum = 0
    vehicle_cabin_types_a = []
    begin
      filename = File.join Rails.root, 'ohjaamotyyppi.csv'
      CSV.foreach(filename, headers: true, :col_sep => ";") do |row|
        vehicle_cabin_types_a << VehicleCabinType.new(
          koodintunnus: row[0],
          lyhytselite_fi: row[1],
          lyhytselite_sv: row[2],
          lyhytselite_en: row[3]
        )
        sum += 1
        if sum % 100000 == 0
          puts "count: #{sum}"
          puts "array length: #{vehicle_cabin_types_a.length}"
          puts "performing import.."
          VehicleCabinType.import(vehicle_cabin_types_a, validate: false)
          puts "..done"
          vehicle_cabin_types_a = []
        end
      end
      if vehicle_cabin_types_a.length > 0
        puts "performing import.."
        puts "array length: #{vehicle_cabin_types_a.length}"
        VehicleCabinType.import(vehicle_cabin_types_a, validate: false)
        puts "..done"
      end
    rescue CSV::MalformedCSVError
      retry
    end
  end

end
__END__
koodintunnus;pitkaselite_fi;pitkaselite_sv;pitkaselite_en
