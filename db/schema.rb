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

ActiveRecord::Schema.define(version: 2021_06_11_150732) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "booking_updates", force: :cascade do |t|
    t.text "content"
    t.bigint "booking_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["booking_id"], name: "index_booking_updates_on_booking_id"
    t.index ["user_id"], name: "index_booking_updates_on_user_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.date "star_time"
    t.date "end_time"
    t.bigint "pet_nanny_id", null: false
    t.bigint "pet_id", null: false
    t.bigint "user_id", null: false
    t.string "status", default: "pending"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "amount_cents"
    t.string "checkout_session_id"
    t.index ["pet_id"], name: "index_bookings_on_pet_id"
    t.index ["pet_nanny_id"], name: "index_bookings_on_pet_nanny_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "state"
    t.integer "amount_cents", default: 0, null: false
    t.string "checkout_session_id"
    t.bigint "user_id", null: false
    t.bigint "pet_nanny_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pet_nanny_id"], name: "index_orders_on_pet_nanny_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "pet_nannies", force: :cascade do |t|
    t.text "introduction"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "start_date"
    t.date "end_date"
    t.integer "rate_cents", default: 0, null: false
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
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "latitude"
    t.float "longitude"
    t.string "profile_picture"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "booking_updates", "bookings"
  add_foreign_key "booking_updates", "users"
  add_foreign_key "bookings", "pet_nannies"
  add_foreign_key "bookings", "pets"
  add_foreign_key "bookings", "users"
  add_foreign_key "orders", "pet_nannies"
  add_foreign_key "orders", "users"
  add_foreign_key "pet_nannies", "users"
  add_foreign_key "pet_nanny_reviews", "bookings"
  add_foreign_key "pet_reviews", "bookings"
  add_foreign_key "pets", "users"
end
