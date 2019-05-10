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

ActiveRecord::Schema.define(version: 2019_05_10_153732) do

  create_table "cities", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.bigint "states_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["states_id"], name: "index_cities_on_states_id"
  end

  create_table "maintenances", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "entrance_date"
    t.date "exit_date"
    t.bigint "current_km"
    t.string "description"
    t.float "mo_value"
    t.float "parts_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "kind"
    t.string "name"
    t.string "company_name"
    t.bigint "ie"
    t.bigint "cnpj"
    t.bigint "rg"
    t.bigint "cpf"
    t.bigint "tel1"
    t.bigint "tel2"
    t.string "email"
    t.string "address"
    t.string "address_number"
    t.string "address_complement"
    t.string "address_bairro"
    t.bigint "address_zip"
    t.string "status"
    t.bigint "cities_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cities_id"], name: "index_people_on_cities_id"
  end

  create_table "states", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "uf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicle_brands", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicle_models", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "version"
    t.string "engine"
    t.bigint "vehicle_brands_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vehicle_brands_id"], name: "index_vehicle_models_on_vehicle_brands_id"
  end

  add_foreign_key "cities", "states", column: "states_id"
  add_foreign_key "people", "cities", column: "cities_id"
  add_foreign_key "vehicle_models", "vehicle_brands", column: "vehicle_brands_id"
end
