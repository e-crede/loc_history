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

ActiveRecord::Schema[7.0].define(version: 2022_06_19_143301) do
  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.time "duration"
    t.string "gps_coords"
    t.string "gps_file"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "lat"
    t.float "lon"
    t.string "sat"
    t.string "desc"
    t.float "alt"
    t.float "acc"
    t.string "dir"
    t.string "prov"
    t.string "spd"
    t.integer "timestamp"
    t.date "timeoffset"
    t.date "time"
    t.integer "starttimestamp"
    t.date "date"
    t.string "batt"
    t.string "ischarging"
    t.string "aid"
    t.string "ser"
    t.string "act"
    t.string "filename"
    t.string "profile"
    t.string "hdop"
    t.string "vdop"
    t.string "pdop"
    t.string "dist"
    t.index ["user_id"], name: "index_locations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "locations", "users"
end
