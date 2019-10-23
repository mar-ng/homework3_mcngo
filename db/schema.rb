# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_23_022848) do

  create_table "appointments", force: :cascade do |t|
    t.integer "appointment_id"
    t.date "appointment_date"
    t.integer "physician_name_id", null: false
    t.integer "patient_name_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_name_id"], name: "index_appointments_on_patient_name_id"
    t.index ["physician_name_id"], name: "index_appointments_on_physician_name_id"
  end

  create_table "offices", force: :cascade do |t|
    t.string "office_street_address"
    t.integer "office_zip"
    t.integer "office_phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "physician_id"
  end

  create_table "patients", force: :cascade do |t|
    t.integer "patient_id"
    t.string "patient_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "physicians", force: :cascade do |t|
    t.string "physician_name"
    t.string "physician_specialty"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "appointments", "patient_names"
  add_foreign_key "appointments", "physician_names"
end
