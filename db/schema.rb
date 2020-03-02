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

ActiveRecord::Schema.define(version: 2020_03_02_154732) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "classrooms", force: :cascade do |t|
    t.string "name"
    t.bigint "school_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["school_id"], name: "index_classrooms_on_school_id"
  end

  create_table "photographers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "fullname", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_photographers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_photographers_on_reset_password_token", unique: true
  end

  create_table "photos", force: :cascade do |t|
    t.boolean "photo_type"
    t.bigint "classroom_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["classroom_id"], name: "index_photos_on_classroom_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name", default: "", null: false
    t.string "address", default: "", null: false
    t.bigint "photographer_id", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_schools_on_email", unique: true
    t.index ["photographer_id"], name: "index_schools_on_photographer_id"
    t.index ["reset_password_token"], name: "index_schools_on_reset_password_token", unique: true
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "token"
    t.bigint "classroom_id", null: false
    t.bigint "photo_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["classroom_id"], name: "index_students_on_classroom_id"
    t.index ["photo_id"], name: "index_students_on_photo_id"
    t.index ["token"], name: "index_students_on_token", unique: true
  end

  add_foreign_key "classrooms", "schools"
  add_foreign_key "photos", "classrooms"
  add_foreign_key "schools", "photographers"
  add_foreign_key "students", "classrooms"
  add_foreign_key "students", "photos"
end
