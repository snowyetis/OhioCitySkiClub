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

ActiveRecord::Schema.define(version: 20190429074544) do

  create_table "bookings", force: :cascade do |t|
    t.string "status"
    t.string "title"
    t.integer "cost"
    t.datetime "start"
    t.text "cancelation_reason"
    t.boolean "refunded"
    t.integer "trip_id"
    t.integer "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_bookings_on_client_id"
    t.index ["trip_id"], name: "index_bookings_on_trip_id"
  end

  create_table "calendars", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.text "bio"
    t.string "experience"
    t.string "photo"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_clients_on_user_id"
  end

  create_table "trippayments", force: :cascade do |t|
    t.string "payment_number"
    t.string "status"
    t.date "date"
    t.integer "cost"
    t.string "service"
    t.integer "trip_id"
    t.integer "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_trippayments_on_client_id"
    t.index ["trip_id"], name: "index_trippayments_on_trip_id"
  end

  create_table "trips", force: :cascade do |t|
    t.string "ski_resort"
    t.string "resort_city"
    t.string "resort_state"
    t.decimal "cost"
    t.decimal "gross_earned"
    t.decimal "net_earned"
    t.integer "req_count"
    t.integer "actual_count"
    t.datetime "trip_date"
    t.string "trip_distance"
    t.integer "trip_days"
    t.decimal "resort_rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "userdetails", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.string "address"
    t.string "address2"
    t.string "city"
    t.string "zip"
    t.string "state"
    t.string "age"
    t.date "birthday"
    t.string "skill_level"
    t.string "preferred_sport"
    t.string "style"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_userdetails_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username", default: "", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
