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

ActiveRecord::Schema.define(version: 20150524033423) do

  create_table "activities", force: true do |t|
    t.string   "description"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "plusone_id"
  end

  add_index "activities", ["plusone_id"], name: "index_activities_on_plusone_id"

  create_table "cohorts", force: true do |t|
    t.string   "name"
    t.boolean  "c_public",   default: false
    t.integer  "admin"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password"
  end

  create_table "enrollments", force: true do |t|
    t.integer  "user_id"
    t.integer  "cohort_id"
    t.datetime "enrollment_date"
  end

  create_table "plusones", force: true do |t|
    t.integer  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.date     "p_date"
    t.string   "description"
  end

  create_table "teams", force: true do |t|
    t.string  "name"
    t.integer "cohort_id"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
