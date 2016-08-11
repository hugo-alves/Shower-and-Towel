# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160811103322) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bathrooms", force: :cascade do |t|
    t.integer  "price"
    t.text     "address"
    t.string   "accepted_gender"
    t.string   "category"
    t.boolean  "towel",           default: false
    t.boolean  "shower_gel",      default: false
    t.boolean  "shampoo",         default: false
    t.integer  "user_id"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.float    "latitude"
    t.float    "longitude"
    t.text     "description"
    t.string   "picture"
  end

  add_index "bathrooms", ["user_id"], name: "index_bathrooms_on_user_id", using: :btree

  create_table "booking_reviews", force: :cascade do |t|
    t.integer  "rating"
    t.text     "content"
    t.integer  "booking_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "booking_reviews", ["booking_id"], name: "index_booking_reviews_on_booking_id", using: :btree

  create_table "bookings", force: :cascade do |t|
    t.integer  "time",        default: 15
    t.integer  "price"
    t.integer  "bathroom_id"
    t.integer  "user_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.date     "book_time"
  end

  add_index "bookings", ["bathroom_id"], name: "index_bookings_on_bathroom_id", using: :btree
  add_index "bookings", ["user_id"], name: "index_bookings_on_user_id", using: :btree

  create_table "user_reviews", force: :cascade do |t|
    t.integer  "rating"
    t.text     "content"
    t.integer  "booking_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "user_reviews", ["booking_id"], name: "index_user_reviews_on_booking_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "name"
    t.string   "gender"
    t.boolean  "owner",                  default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "profile_pic"
    t.string   "provider"
    t.string   "uid"
    t.string   "facebook_picture_url"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "token"
    t.datetime "token_expiry"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "bathrooms", "users"
  add_foreign_key "booking_reviews", "bookings"
  add_foreign_key "bookings", "bathrooms"
  add_foreign_key "bookings", "users"
  add_foreign_key "user_reviews", "bookings"
end
