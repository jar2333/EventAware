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

ActiveRecord::Schema.define(version: 2022_12_05_021115) do

  create_table "authentications", force: :cascade do |t|
    t.integer "user_id"
    t.string "auth_hash"
    t.string "auth_token"
    t.index ["user_id"], name: "index_authentications_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.string "description"
    t.datetime "date_posted"
    t.datetime "start_date"
    t.datetime "end_date"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "followers", force: :cascade do |t|
    t.integer "user_id"
    t.integer "follower_id"
    t.index ["follower_id"], name: "index_followers_on_follower_id"
    t.index ["user_id", "follower_id"], name: "index_followers_on_user_id_and_follower_id", unique: true
    t.index ["user_id"], name: "index_followers_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.integer "user_id"
    t.integer "event_id"
    t.datetime "date_posted"
    t.string "content"
    t.index ["event_id"], name: "index_messages_on_event_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "registrations", force: :cascade do |t|
    t.integer "user_id"
    t.integer "event_id"
    t.index ["event_id"], name: "index_registrations_on_event_id"
    t.index ["user_id"], name: "index_registrations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "uni"
    t.index ["uni"], name: "index_users_on_uni", unique: true
  end

end
