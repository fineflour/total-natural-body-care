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

ActiveRecord::Schema.define(version: 20180314202323) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.bigint "question_id"
    t.text "answer"
    t.string "entered_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_answers_on_question_id"
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.boolean "active"
    t.string "source"
    t.date "written_at"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_articles_on_user_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.string "subject"
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "online_bookings", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
    t.string "email"
    t.string "phone"
    t.string "appnt_date"
    t.string "appnt_time"
    t.string "doctor"
    t.string "status"
    t.boolean "first_visit", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patient_addresses", force: :cascade do |t|
    t.bigint "patient_id"
    t.string "address1"
    t.string "address2"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.boolean "primary", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_patient_addresses_on_patient_id"
  end

  create_table "patient_emails", force: :cascade do |t|
    t.bigint "patient_id"
    t.string "email"
    t.boolean "primary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_patient_emails_on_patient_id"
  end

  create_table "patients", force: :cascade do |t|
    t.integer "unique_id", null: false
    t.string "fname"
    t.string "lname"
    t.string "dob"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string "category"
    t.string "fname"
    t.string "lname"
    t.string "email"
    t.string "phone"
    t.string "subject"
    t.text "message"
    t.boolean "display", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "articles", "users"
end
