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

ActiveRecord::Schema.define(version: 20141204050411) do

  create_table "quests", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "reward",         limit: 8
    t.integer  "quest_giver_id"
    t.integer  "quester_id"
    t.string   "source"
    t.string   "destination"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "completed",                default: false
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.integer  "ratings_total"
    t.integer  "ratings_count"
    t.integer  "score",           default: 100
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
