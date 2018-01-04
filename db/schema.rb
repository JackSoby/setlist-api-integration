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

ActiveRecord::Schema.define(version: 20180103235305) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "setlists", force: :cascade do |t|
    t.string "name"
    t.bigint "show_id"
    t.index ["show_id"], name: "index_setlists_on_show_id"
  end

  create_table "shows", force: :cascade do |t|
    t.string "venue", null: false
    t.string "date", null: false
    t.bigint "tour_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tour_id"], name: "index_shows_on_tour_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "name", null: false
    t.integer "length"
    t.bigint "setlist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["setlist_id"], name: "index_songs_on_setlist_id"
  end

  create_table "tours", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
