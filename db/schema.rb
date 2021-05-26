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

ActiveRecord::Schema.define(version: 2021_05_26_160155) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.date "star_time"
    t.date "end_time"
    t.bigint "pet_nanny_id", null: false
    t.bigint "pet_id", null: false
    t.bigint "user_id", null: false
    t.string "status", default: "pending"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pet_id"], name: "index_bookings_on_pet_id"
    t.index ["pet_nanny_id"], name: "index_bookings_on_pet_nanny_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "pet_nannies", force: :cascade do |t|
    t.text "introduction"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_pet_nannies_on_user_id"
  end

  create_table "pet_nanny_reviews", force: :cascade do |t|
    t.text "content"
    t.integer "rating"
    t.bigint "booking_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["booking_id"], name: "index_pet_nanny_reviews_on_booking_id"
  end

  create_table "pet_reviews", force: :cascade do |t|
    t.text "content"
    t.integer "rating"
    t.bigint "booking_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["booking_id"], name: "index_pet_reviews_on_booking_id"
  end

  create_table "pets", force: :cascade do |t|
    t.string "name"
    t.string "vet_record"
    t.string "medications"
    t.string "dietary"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_pets_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone_number"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "bookings", "pet_nannies"
  add_foreign_key "bookings", "pets"
  add_foreign_key "bookings", "users"
  add_foreign_key "pet_nannies", "users"
  add_foreign_key "pet_nanny_reviews", "bookings"
  add_foreign_key "pet_reviews", "bookings"
  add_foreign_key "pets", "users"
end
