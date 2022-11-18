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

ActiveRecord::Schema.define(version: 2021_08_14_125151) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "calls", force: :cascade do |t|
    t.integer "customer_id"
    t.string "statu"
    t.datetime "time"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_calls_on_customer_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "tel"
    t.string "email"
    t.string "address"
    t.string "visa"
    t.string "work"
    t.string "country"
    t.string "period"
    t.string "subject"
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.integer "admin_id"
    t.string "company"
    t.string "name"
    t.string "tel"
    t.string "mobile"
    t.string "mail"
    t.string "postnumber"
    t.string "address"
    t.string "industry"
    t.string "url"
    t.string "item"
    t.string "price"
    t.string "number"
    t.string "history"
    t.string "area"
    t.string "option"
    t.string "start"
    t.string "target"
    t.datetime "next"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_customers_on_admin_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "file"
    t.string "choice"
    t.string "keyword"
    t.string "description"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trials", force: :cascade do |t|
    t.string "company"
    t.string "name"
    t.string "tel"
    t.string "email"
    t.string "address"
    t.string "try"
    t.string "list"
    t.string "script"
    t.string "contract"
    t.string "remarks"
    t.string "agree"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
