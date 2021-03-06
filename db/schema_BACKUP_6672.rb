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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20171102053052) do
=======
ActiveRecord::Schema.define(version: 20171031044250) do
>>>>>>> 2597b62afd93f1657bc943575c9532b8cf4352f2

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "subscribes", primary_key: "subscribe_id", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "subscription_id"
    t.boolean  "favourite",       default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subscribes", ["user_id", "subscription_id"], name: "index_subscribes_on_user_id_and_subscription_id", using: :btree

  create_table "subscriptions", primary_key: "subscription_id", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.string   "url",            limit: 255
    t.string   "geography",      limit: 255
    t.string   "json_reference", limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "users", primary_key: "user_id", force: :cascade do |t|
    t.string   "first_name",      limit: 255
    t.string   "last_name",       limit: 255
    t.string   "username",        limit: 255, null: false
    t.string   "email",           limit: 255
    t.date     "birth_date"
    t.string   "password",                    null: false
    t.string   "country",         limit: 255
    t.binary   "profile_picture"
    t.datetime "created_at"
    t.datetime "updated_at"
<<<<<<< HEAD
    t.string   "password_digest"
=======
>>>>>>> 2597b62afd93f1657bc943575c9532b8cf4352f2
  end

  create_table "widgets", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "stock"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
