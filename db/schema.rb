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

ActiveRecord::Schema.define(version: 2022_11_01_210752) do

  create_table "authentications", force: :cascade do |t|
    t.string "user_id"
    t.string "auth_hash"
    t.string "auth_token"
  end

  create_table "events", id: false, force: :cascade do |t|
    t.string "event_id"
    t.string "organizer"
    t.string "title"
    t.string "description"
    t.datetime "date_posted"
    t.datetime "start_date"
    t.datetime "end_date"
  end

  create_table "followers", id: false, force: :cascade do |t|
    t.string "user_id"
    t.string "follower_id"
  end

  create_table "messages", id: false, force: :cascade do |t|
    t.string "message_id"
    t.string "user_id"
    t.string "event_id"
    t.datetime "date_posted"
    t.string "content"
  end

  create_table "registrations", id: false, force: :cascade do |t|
    t.string "user_id"
    t.string "event_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "uni"
  end

end
