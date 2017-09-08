# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170908101137) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "colors", force: :cascade do |t|
    t.string "koodintunnus"
    t.string "pitkaselite_fi"
    t.string "pitkaselite_sv"
    t.string "pitkaselite_en"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicle_cabin_types", force: :cascade do |t|
    t.string "koodintunnus"
    t.string "lyhytselite_fi"
    t.string "lyhytselite_sv"
    t.string "lyhytselite_en"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicle_chassis_types", force: :cascade do |t|
    t.string "koodintunnus"
    t.string "pitkaselite_fi"
    t.string "pitkaselite_sv"
    t.string "pitkaselite_en"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicle_groups", force: :cascade do |t|
    t.string "ajoneuvoryhma"
    t.string "pitkaselite_fi"
    t.string "pitkaselite_sv"
    t.string "pitkaselite_en"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicle_types", force: :cascade do |t|
    t.string "ajoneuvoluokka"
    t.string "lyhytselite"
    t.string "pitkaselite"
    t.string "lyhytselite_sv"
    t.string "pitkaselite_sv"
    t.string "lyhytselite_en"
    t.string "pitkaselite_en"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicle_uses", force: :cascade do |t|
    t.integer "ajoneuvonkaytto"
    t.string "lyhytselite_fi"
    t.string "pitkaselite_fi"
    t.string "lyhytselite_sv"
    t.string "pitkaselite_sv"
    t.string "lyhytselite_en"
    t.string "pitkaselite_en"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "ajoneuvoluokka"
    t.datetime "ensirekisterointipvm"
    t.string "ajoneuvoryhma"
    t.integer "ajoneuvonkaytto"
    t.datetime "kayttoonottopvm"
    t.string "vari"
    t.integer "ovienlukumaara"
    t.string "korityyppi"
    t.integer "ohjaamotyyppi"
    t.integer "istumapaikkojenlkm"
    t.integer "omamassa"
    t.integer "teknsuursallkokmassa"
    t.integer "tieliiksuursallkokmassa"
    t.integer "ajonkokpituus"
    t.integer "ajonleveys"
    t.integer "ajonkorkeus"
    t.integer "kayttovoima"
    t.integer "iskutilavuus"
    t.integer "suurinnettoteho"
    t.integer "sylintereidenlkm"
    t.boolean "ahdin"
    t.boolean "sahkohybridi"
    t.string "merkkiselvakielinen"
    t.string "mallimerkinta"
    t.string "vaihteisto"
    t.integer "vaihteidenlkm"
    t.string "kaupallinennimi"
    t.integer "voimanvaljatehostamistapa"
    t.string "tyyppihyvaksyntanro"
    t.string "variantti"
    t.string "versio"
    t.integer "yksittaiskayttovoima"
    t.integer "kunta"
    t.integer "co2"
    t.bigint "jarnro"
    t.integer "alue"
    t.bigint "mittarilukema"
    t.string "valmistenumero2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ensirekisterointipvm"], name: "index_vehicles_on_ensirekisterointipvm"
    t.index ["id"], name: "index_vehicles_on_id"
    t.index ["kunta"], name: "index_vehicles_on_kunta"
  end

end
