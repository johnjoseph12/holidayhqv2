# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_10_01_000228) do
  create_table "flight_details", force: :cascade do |t|
    t.integer "trip_id", null: false
    t.string "airport"
    t.datetime "departure_time"
    t.datetime "arrival_time"
    t.string "airline"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trip_id"], name: "index_flight_details_on_trip_id"
  end

  create_table "hotel_details", force: :cascade do |t|
    t.integer "trip_id", null: false
    t.date "checkout_date"
    t.string "place"
    t.string "qr_code_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trip_id"], name: "index_hotel_details_on_trip_id"
  end

  create_table "trips", force: :cascade do |t|
    t.string "destination"
    t.date "start_date"
    t.date "end_date"
    t.integer "total_people"
    t.decimal "budget"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "flight_details", "trips"
  add_foreign_key "hotel_details", "trips"
end
