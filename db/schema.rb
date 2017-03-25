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

ActiveRecord::Schema.define(version: 20170325230524) do

  create_table "levels", force: :cascade do |t|
    t.string   "name"
    t.integer  "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string  "name"
    t.text    "details"
    t.date    "limit"
    t.string  "level",    limit: 1, default: "0"
    t.integer "check",    limit: 1, default: 0
    t.integer "level_id"
    t.index ["level_id"], name: "index_tasks_on_level_id"
  end

end
